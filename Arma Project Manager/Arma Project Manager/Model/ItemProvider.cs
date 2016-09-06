using System.Collections.Generic;
using System.IO;
using Arma_Project_Manager.Code;

namespace Arma_Project_Manager.Model
{
    public class ItemProvider
    {
        string projPath = Path.Combine(Glob.SourcePath, Glob.SelectedProjectName);
        public List<Item> GetItems(string path)
        {
            var items = new List<Item>();

            var dirInfo = new DirectoryInfo(path);

            foreach (var directory in dirInfo.GetDirectories())
            {
                //A bit hacky ... but meh
                if (directory.FullName == Path.Combine(path,"Server") || directory.FullName == Path.Combine(path, "Client"))
                {
                    var item = new BaseDirectoryItem
                    {
                        Name = directory.Name,
                        Path = directory.FullName,
                        Type = 0,
                        Items = GetItems(directory.FullName)
                    };
                    items.Add(item);
                }
                else
                {
                    if (directory.FullName == Path.Combine(path, "Mission"))
                    {
                        var item = new MissionDirectoryItem
                        {
                            Name = directory.Name,
                            Path = directory.FullName,
                            Type = 0,
                            Items = GetItems(directory.FullName)
                        };
                        items.Add(item);
                    }
                    else
                    {
                        if (directory.Parent.FullName == Path.Combine(projPath, "Client") || directory.Parent.FullName == Path.Combine(projPath, "Server"))
                        {
                            var item = new PBODirectoryItem
                            {
                                Name = directory.Name,
                                Path = directory.FullName,
                                Type = 0,
                                Items = GetItems(directory.FullName)
                            };
                            items.Add(item);
                        }
                        else
                        {
                            var item = new DirectoryItem
                            {
                                Name = directory.Name,
                                Path = directory.FullName,
                                Type = 0,
                                Items = GetItems(directory.FullName)
                            };
                            items.Add(item);
                        }
                    }       
                }
            }

            foreach (var file in dirInfo.GetFiles())
            {
                var item = new FileItem
                {
                    Name = file.Name,
                    Type = 1,
                    Path = file.FullName
                };

                items.Add(item);
            }

            return items;
        }
    }
}
