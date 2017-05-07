namespace otomoi.Models
{
    using System;
    using System.Data.Entity;
    using System.ComponentModel.DataAnnotations.Schema;
    using System.Linq;

    public partial class Model1 : DbContext
    {
        public Model1()
            : base("name=GTOT")
        {
        }

        public virtual DbSet<baiviet> baiviets { get; set; }
        public virtual DbSet<hangxe> hangxes { get; set; }
        public virtual DbSet<loaibaiviet> loaibaiviets { get; set; }
        public virtual DbSet<loaixe> loaixes { get; set; }
        public virtual DbSet<nguoidung> nguoidungs { get; set; }
        public virtual DbSet<oto> otoes { get; set; }
        public virtual DbSet<quyen> quyens { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }

        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            modelBuilder.Entity<baiviet>()
                .Property(e => e.anh)
                .IsUnicode(false);

            modelBuilder.Entity<hangxe>()
                .HasMany(e => e.otoes)
                .WithRequired(e => e.hangxe)
                .HasForeignKey(e => e.hangsanxuatma)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<loaibaiviet>()
                .HasMany(e => e.baiviets)
                .WithRequired(e => e.loaibaiviet)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<loaixe>()
                .HasMany(e => e.otoes)
                .WithRequired(e => e.loaixe)
                .WillCascadeOnDelete(false);

            modelBuilder.Entity<nguoidung>()
                .Property(e => e.ten)
                .IsUnicode(false);

            modelBuilder.Entity<nguoidung>()
                .Property(e => e.matkhau)
                .IsUnicode(false);

            modelBuilder.Entity<oto>()
                .Property(e => e.masanpham)
                .IsUnicode(false);

            modelBuilder.Entity<quyen>()
                .HasMany(e => e.nguoidungs)
                .WithRequired(e => e.quyen)
                .WillCascadeOnDelete(false);
        }
    }
}
