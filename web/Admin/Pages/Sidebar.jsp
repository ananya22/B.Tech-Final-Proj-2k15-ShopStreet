 <!-- Left side column. contains the logo and sidebar -->
      <aside class="main-sidebar">
        <!-- sidebar: style can be found in sidebar.less -->
        <section class="sidebar">
          <!-- Sidebar user panel -->
          <div class="user-panel">
            <div class="pull-left image">
              <img src="../dist/img/logo.png" class="img-circle" alt="User Image" />
            </div>
            <div class="pull-left info">
              <p>    </p>

              <a href="#"><i class="fa fa-circle text-success"></i> ADMIN</a>
            </div>
          </div>
          <!-- search form -->
          <form action="#" method="get" class="sidebar-form">
            <div class="input-group">
              <input type="text" name="q" class="form-control" placeholder="Search..."/>
              <span class="input-group-btn">
                <button type='submit' name='search' id='search-btn' class="btn btn-flat"><i class="fa fa-search"></i></button>
              </span>
            </div>
          </form>
          <!-- /.search form -->
          <!-- sidebar menu: : style can be found in sidebar.less -->
          <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
         <li class="active"><a href="Index.jsp"><i class="fa fa-circle-o"></i> Home</a></li>
                
            <li class="active treeview">
              <a href="#">
                <i class="fa fa-dashboard"></i> <span>CATEGORY</span> <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                <li class="active"><a href="AddCategory.jsp"><i class="fa fa-circle-o"></i> Add Category</a></li>
                <li><a href="AddSupplier.jsp"><i class="fa fa-circle-o"></i>Add Supplier </a></li>
                 <li><a href="AddProType.jsp"><i class="fa fa-circle-o"></i> Add Product Type</a></li>
                  <li><a href="addproduct.jsp"><i class="fa fa-circle-o"></i>Add product</a></li>
              </ul>
            </li>
           
            
            <li class="treeview">
              <a href="#">
                <i class="fa fa-laptop"></i>
                <span>UPDATION DELETION</span>
                <i class="fa fa-angle-left pull-right"></i>
              </a>
              <ul class="treeview-menu">
                  <li><a href="CategoryUpdate.jsp"><i class="fa fa-circle-o"></i> Category</a></li>
                <li><a href="supplierupdation.jsp"><i class="fa fa-circle-o"></i> Supplier</a></li>
                <li><a href="typeupdation.jsp"><i class="fa fa-circle-o"></i>Product Type </a></li>
               
                <li><a href="ProductUpdation.jsp"><i class="fa fa-circle-o"></i>Product</a></li>
              
              </ul>
            </li>
            
        </section>
        <!-- /.sidebar -->
      </aside>