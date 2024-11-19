import 'package:drawer/appController.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int counter = 0;

  Widget _body() {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.7,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          SizedBox(
            height: 300,
            child: Image.asset(
              'assets/img/Logo-tempo-integral.png',
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.2,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Welcome to the home page',
                  style: TextStyle(fontSize: 24),
                ),
                SizedBox(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).pushNamed('/');
                    },
                    child: Text('Back'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _MenuHeader() {
    return SizedBox(
      height: 200,
      child: UserAccountsDrawerHeader(
        decoration: BoxDecoration(color: Colors.grey[800]),
        currentAccountPictureSize: const Size.fromRadius(24),
        currentAccountPicture: ClipRRect(
          borderRadius: BorderRadius.circular(50),
          child: Image.asset(
            'assets/img/user.png',
          ),
        ),
        accountName: const Text('Joao'),
        accountEmail: const Text('joaovtfor@hotmail.com'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: Column(
          children: [
            _MenuHeader(),
            ListTile(
              leading: const Icon(Icons.home),
              title: const Text('Home'),
              subtitle: const Text('Home page'),
              onTap: () {
                Navigator.of(context).pushNamed('/home');
              },
            ),
            ListTile(
              leading: const Icon(Icons.exit_to_app),
              title: const Text('Logout'),
              subtitle: const Text('Exit the app'),
              onTap: () {
                Navigator.of(context).pushNamed('/');
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.grey[700],
        title: const Text(
          'Drawer test',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [CustomSwitch()],
      ),
      body: _body(),
    );
  }
}

class CustomSwitch extends StatelessWidget {
  const CustomSwitch({super.key});

  @override
  Widget build(BuildContext context) {
    return Switch(
        value: AppController.instance.isDarkTheme,
        onChanged: (value) {
          AppController.instance.changeTheme();
        });
  }
}
