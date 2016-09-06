using System.IO;

namespace Arma_Project_Manager.Code
{
    class Helpers
    {
        public static void DirectoryCopy(string sourceDirName, string destDirName, bool copySubDirs)
        {
            // Get the subdirectories for the specified directory.
            DirectoryInfo dir = new DirectoryInfo(sourceDirName);

            if (!dir.Exists)
            {
                throw new DirectoryNotFoundException(
                    "Source directory does not exist or could not be found: "
                    + sourceDirName);
            }

            DirectoryInfo[] dirs = dir.GetDirectories();
            // If the destination directory doesn't exist, create it.
            if (!Directory.Exists(destDirName))
            {
                Directory.CreateDirectory(destDirName);
            }

            // Get the files in the directory and copy them to the new location.
            FileInfo[] files = dir.GetFiles();
            foreach (FileInfo file in files)
            {
                string temppath = Path.Combine(destDirName, file.Name);
                file.CopyTo(temppath, false);
            }

            // If copying subdirectories, copy them and their contents to new location.
            if (copySubDirs)
            {
                foreach (DirectoryInfo subdir in dirs)
                {
                    string temppath = Path.Combine(destDirName, subdir.Name);
                    DirectoryCopy(subdir.FullName, temppath, copySubDirs);
                }
            }
            return;
        }

        public static string GetItemType(string path)
        {
            string type;
            if (path[path.Length - 4] == '.')
                type = "File";
            else
                type = "Dir";
            return type;
        }

        public static string BuildParentPath(string path)
        {
            string parentPath = "";
            DirectoryInfo di = new DirectoryInfo(path);
            string[] parentItems = path.Split('\\');
            for (int i = 0; i < parentItems.Length - 1; i++)
            {
                parentPath = Path.Combine(parentPath, parentItems[i]);
            }
            return parentPath;
        }
    }
}
