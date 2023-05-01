class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: const Text('Dashboard'),
      //   leading: const Icon(CupertinoIcons.back, fill: 1, grade: 100, size: 27),
      // ),
      body: Padding(
        padding: MediaQuery.of(context).viewPadding,
        child: Column(
          children: [
            Column(
              children: [
                Container(
                  margin: EdgeInsets.zero,
                  // color: Colors.grey,
                  decoration: BoxDecoration(
                      // color: Colors.green,
                      border: Border(
                          bottom: BorderSide(width: 0.3, color: Colors.grey))),
                  // margin: EdgeInsets.only(
                  //   bottom: 10,
                  // ),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          InkWell(
                            // hoverColor: Colors.red,
                            // focusColor: Colors.red,
                            // highlightColor: Colors.transparent,
                            // splashColor: Colors.transparent,
                            onTap: () {},
                            child: Padding(
                              padding: const EdgeInsets.all(5),
                              child: Icon(
                                CupertinoIcons.back,
                                size: 26,
                              ),
                            ),
                          ),
                          const SizedBox(width: 20),
                          Text(
                            'Dashboard',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
            // Card(
            //   margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            //   child: Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: Row(
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           children: [
            //             SizedBox(
            //               height: 50,
            //               width: 50,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(50),
            //                 child: Image.network(
            //                   'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //             ),
            //             const SizedBox(width: 10),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: const [
            //                 Text(
            //                   'Batoulime',
            //                   style: TextStyle(
            //                       fontSize: 16, fontWeight: FontWeight.bold),
            //                 ),
            //                 SizedBox(height: 1),
            //                 Text(
            //                   'Manager',
            //                   style: TextStyle(fontSize: 12),
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //         Icon(Icons.chevron_right)
            //       ],
            //     ),
            //   ),
            // ),
            // Card(
            //   margin: const EdgeInsets.only(right: 10, left: 10, bottom: 10),
            //   child: Padding(
            //     padding: const EdgeInsets.all(10),
            //     child: Row(
            //       // crossAxisAlignment: CrossAxisAlignment.start,
            //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //       children: [
            //         Row(
            //           children: [
            //             SizedBox(
            //               height: 50,
            //               width: 50,
            //               child: ClipRRect(
            //                 borderRadius: BorderRadius.circular(50),
            //                 child: Image.network(
            //                   'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80',
            //                   fit: BoxFit.cover,
            //                 ),
            //               ),
            //             ),
            //             const SizedBox(width: 10),
            //             Column(
            //               crossAxisAlignment: CrossAxisAlignment.start,
            //               children: const [
            //                 Text(
            //                   'Batoulime',
            //                   style: TextStyle(
            //                       fontSize: 16, fontWeight: FontWeight.bold),
            //                 ),
            //                 SizedBox(height: 1),
            //                 Text(
            //                   'Manager',
            //                   style: TextStyle(fontSize: 12),
            //                 )
            //               ],
            //             ),
            //           ],
            //         ),
            //         Icon(Icons.chevron_right)
            //       ],
            //     ),
            //   ),
            // ),
            BuildMenu([
              {
                'icon': Icons.home,
                'title': 'Home',
                'description': "L'écran d'accueil de l'application.",
              },
              {
                'icon': Icons.wallet,
                'title': 'Wallet',
                'description': 'Gérez votre portefeuille',
              },
              {
                'icon': Icons.person,
                'title': 'Compte',
                'description': 'Gérez les paramètres de votre compte',
              }
            ])
          ],
        ),
      ),
    );
  }

  Widget BuildMenu(List<Map<String, dynamic>> items) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListView.separated(
            padding: EdgeInsets.zero,
            shrinkWrap: true,
            physics: const BouncingScrollPhysics(),
            itemCount: items.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(10),
                child: Row(
                  children: [
                    Icon(
                      items[index]['icon'],
                      size: 27,
                    ),
                    const SizedBox(width: 10),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          items[index]['title'],
                          style: TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          items[index]['description'],
                          style: TextStyle(color: Colors.grey, fontSize: 13),
                        ),
                      ],
                    )
                  ],
                ),
              );
            },
            separatorBuilder: (BuildContext context, int index) {
              return const Divider();
            },
          )
        ],
      ),
    );
  }
}