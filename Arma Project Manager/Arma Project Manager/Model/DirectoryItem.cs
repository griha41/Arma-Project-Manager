using System.Collections.Generic;

namespace Arma_Project_Manager.Model
{
    class DirectoryItem : Item 
    {
        public List<Item> Items { get; set; }
        public DirectoryItem()
        {
            Items = new List<Item>();
        }
    }
}
