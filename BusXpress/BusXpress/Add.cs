using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace BusXpress
{
    public class add
    {
        public int Id { get; set; }
        public string Username { get; set; }
        public string Email { get; set; }
        public string Bus { get; set; }
        public string Passengers { get; set; }
        public add() { }

        public add(string pUsername, string pEmail, string pPrecio, string pBus, string pPassengers, int PId)

        {
            this.Id = PId;
            this.Username = pUsername;
            this.Email = pEmail;
            this.Bus = pBus;
            this.Passengers = pPassengers;
        }
    }


    public class add_driver
    {
        public int ID { get; set; }
        public string Name { get; set; }
        public string Bus { get; set; }
        public string Departure { get; set; }
        public string Destiny { get; set; }
        public add_driver() { }

        public add_driver(int dID, string dNAME, string dBUS, string dDEPARTURE, string dDESTINY)
        {
            ID = dID;
            Name = dNAME;
            Bus = dBUS;
            Departure = dDEPARTURE;
            Destiny = dDESTINY;

        }
    }

    public class Ticket
    {
        public string Name { get; set; }
        public decimal Price { get; set; }

        public Ticket(string name,decimal price)
        {
            Name = name;
            Price = price;
        }
    }


}