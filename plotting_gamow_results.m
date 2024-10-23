tbl = readtable("mass_gamowarea.xlsx");
scatter(tbl, "LogMass", "LogArea", "filled");
grid on