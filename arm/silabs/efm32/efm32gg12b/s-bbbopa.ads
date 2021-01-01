package System.BB.Board_Parameters is
   pragma No_Elaboration_Code_All;
   pragma Pure;
   --------------------
   -- Hardware clock --
   --------------------
   RTC_Tick_Scaling_Factor  : constant := 32;
   Main_Clock_Frequency : constant := 32_768 * RTC_Tick_Scaling_Factor;
end System.BB.Board_Parameters;
