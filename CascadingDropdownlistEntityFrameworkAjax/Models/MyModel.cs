namespace CascadingDropdownlistEntityFrameworkAjax.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class MyModel : DbContext
    {
        public MyModel()
            : base("name=MyModel")
        {
        }

        public virtual DbSet<City> Cities { get; set; }
        public virtual DbSet<Country> Countries { get; set; }
        public virtual DbSet<State> States { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<City>()
                .Property(e => e.CityName)
                .IsUnicode(false);

            modelBuilder.Entity<Country>()
                .Property(e => e.CountryName)
                .IsUnicode(false);

            modelBuilder.Entity<Country>()
                .HasMany(e => e.States)
                .WithRequired(e => e.Country)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<State>()
                .Property(e => e.StateName)
                .IsUnicode(false);

            modelBuilder.Entity<State>()
                .HasMany(e => e.Cities)
                .WithRequired(e => e.State)
                .WillCascadeOnDelete(false);
        }
    }
}
