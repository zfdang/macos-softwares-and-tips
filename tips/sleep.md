# Interpreting pmset

If you’re interested in what’s actually causing the problem, here’s a quick rundown on the output of pmset -g assertions:


>  $ pmset -g assertions

9/30/11 2:48:44 PM GMT+ 
Assertion status system-wide:
   ChargeInhibit                           0
   PreventUserIdleDisplaySleep             0
   PreventUserIdleSystemSleep              1
   NoRealPowerSources_debug                0
   CPUBoundAssertion                       0
   EnableIdleSleep                         1
   PreventSystemSleep                      1
   DisableInflow                           0
   DisableLowPowerBatteryWarnings          0
   ExternalMedia                           0

Listed by owning process:
  pid 42096: [0x0000012c0000a470] PreventSystemSleep named: "com.apple.AppleFileServer" 
  pid 19: [0x0000012c00000013] PreventUserIdleSystemSleep named: "com.apple.powermanagement.ttyassertion" 
        Details: /dev/ttys000
        Localized=A remote user is connected. That prevents system sleep.

...

You can see that there are 2 conditions which are preventing sleep in this case (PreventSystemSleep and PreventUserIdleSystemSleep). One of them is a process (basically, like a program/application) which has the ID 42096 and is called “com.apple.AppleFileServer”. This happens to be file sharing. The other process (PID19) happens to be a condition which is asserted when remote users are connected via SSH.

You have to manually terminate these processes or remove their assertions, but do be careful when doing so because not all processes can be killed neatly – you may end up crashing your system if you’re not careful!

For more information on pmset, you can issue the command “man pmset” to get help on how to use it.