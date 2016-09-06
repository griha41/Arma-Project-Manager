using System.Collections.Generic;

namespace Arma_Project_Manager.Code
{
    class Glob
    {
        //Main Window for ease of access 
        public static MainWindow MainWindow { get; set; }

        public static List<string> TreeViewList { get; set; }

        //Strings
        public static string SourcePath { get; set; }
        public static string OutputPath { get; set; }
        public static string MakePBOPath { get; set; }
        public static string SelectedProjectName { get; set; }
        public static string SelectedProjectPath { get; set; }
        public static string SelectedProjectType { get; set; }

        //Bools
        public static bool RemoveSingleLineComments { get; set; }
        public static bool RemoveMultiLineComments { get; set; }
        public static bool ObfuscateMission { get; set; }
    }
}
