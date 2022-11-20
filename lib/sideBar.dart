import 'package:flutter/material.dart';
import 'package:distr_app/datadist.dart';
import 'package:distr_app/datapelanggan.dart';
import 'login_view.dart';

void main() {
  runApp(new MaterialApp(home: new Application()));
}

class Application extends StatefulWidget {
  @override
  NavBar createState() => NavBar();
}

class NavBar extends State<Application> {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: const Text('Home'),
          backgroundColor: Color.fromARGB(255,0,1,101),
        ),
        drawer: const NavigationDrawer(),
      );
}

class NavigationDrawer extends StatelessWidget {
  const NavigationDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) => Drawer(
        backgroundColor: Color.fromARGB(255,0,1,101),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buildHeader(context),
              buildMenuItems(context),
            ],
          ),
        ),
      );

  Widget buildHeader(BuildContext context) => Container(
        //backgroundColor: Color.fromARGB(255,0,1,101),
        child: 
        Container(
          alignment: Alignment.center,
          child: (
            new UserAccountsDrawerHeader(
            
            accountName: Text('Yusmi Putra'),
            accountEmail: Text('yourEmail@gmail.com'),
            currentAccountPicture: new CircleAvatar(
              backgroundColor: Colors.black26,
              child: new Text('P'),
            ),
            decoration: new BoxDecoration(color: Color.fromARGB(255,0,1,101),),
            
          )),
        ),
      );
  Widget buildMenuItems(BuildContext context) => Column(
        children: [

          Divider(
                thickness: 1.0,
                indent: 30,
                endIndent: 30,
                color: Colors.white,
              ),
            

          ListTile(
            textColor: Colors.white,
            leading: const Icon(Icons.home, color: Colors.white,),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            textColor: Colors.white,
            leading: const Icon(Icons.person, color: Colors.white,),
            title: const Text('Data User'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => DataUser())),
          ),
          ListTile(
            textColor: Colors.white,
            leading: const Icon(Icons.person_outlined, color: Colors.white,),
            title: const Text('Data Pelanggan'),
            onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) =>
                    DataPelanggan('Welcome to My Data Pelanggan Page'))),
          ),
          ListTile(
            leading: const Icon(Icons.category, color: Colors.white,),
            title: const Text('Kategori', style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.storage, color: Colors.white,),
            title: const Text('Data Kategori', style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined, color: Colors.white,),
            title: const Text('Transaksi Masuk', style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined, color: Colors.white,),
            title: const Text('Transaksi Keluar', style: TextStyle(color: Colors.white),),
            onTap: () {},
          ),
          const Divider(color: Colors.white),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.white,),
            title: const Text('Log Out', style: TextStyle(color: Colors.white),),
            onTap: () {Navigator.push(context, MaterialPageRoute(builder: (_) => Loginform()));},
          ),
        ],
      );
}
/*{
    return Drawer(
      child: ListView(
        // Remove padding
        padding: EdgeInsets.zero,
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Oflutter.com'),
            accountEmail: Text('example@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.network(
                  'https://oflutter.com/wp-content/uploads/2021/02/girl-profile.png',
                  fit: BoxFit.cover,
                  width: 90,
                  height: 90,
                ),
              ),
            ),
            decoration: BoxDecoration(
              color: Colors.blue,
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: NetworkImage(
                      'https://oflutter.com/wp-content/uploads/2021/02/profile-bg3.jpg')),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person),
            title: const Text('Data User'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.person_outlined),
            title: const Text('Data Pelanggan'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.category),
            title: const Text('Kategori'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.storage),
            title: const Text('Data Kategori'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: const Text('Transaksi Masuk'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.monetization_on_outlined),
            title: const Text('Transaksi Keluar'),
            onTap: () {},
          ),
          const Divider(
            color: Colors.black54,
          ),
          ListTile(
            leading: const Icon(Icons.logout),
            title: const Text('Log Out'),
            onTap: () {},
          )
        ],
      ),
    );
  }
}
*/
