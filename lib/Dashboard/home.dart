import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    double Screenheight = MediaQuery.of(context).size.height;
    double ScreenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: CustomAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            decoration: const BoxDecoration(color: Colors.white),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                    gradient: LinearGradient(
                      colors: [
                        Color(0xFF7E3390), // Purple
                        Colors.white, // Light Purple
                      ],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      SizedBox(height: Screenheight * 0.05),
                      SearchBarExample(),
                      SizedBox(height: Screenheight * 0.02),

                      // Main Banner Section
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Stack(
                          children: [
                            Container(
                              width: double.infinity,
                              height: 200,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(20),
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                // Text + Button
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Find the perfect Vehicle for you!',
                                        style: TextStyle(
                                          fontSize: 26,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white,
                                        ),
                                      ),
                                      const SizedBox(height: 20),
                                      OutlinedButton.icon(
                                        onPressed: () {},
                                        icon: const Icon(
                                          Icons
                                              .double_arrow, // Double arrow icon
                                          color: Colors.yellow,
                                          size: 20,
                                        ),
                                        label: const Text(
                                          'Check here',
                                          style: TextStyle(
                                            color: Colors.yellow,
                                            fontSize: 10,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        style: OutlinedButton.styleFrom(
                                          side: const BorderSide(
                                              color: Colors.yellow,
                                              width: 2), // Border
                                          shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(30),
                                          ),
                                          padding: const EdgeInsets.symmetric(
                                            vertical: 4,
                                            horizontal: 13.0,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),

                                const SizedBox(width: 20),

                                // Car Image
                                ClipRRect(
                                  borderRadius: BorderRadius.circular(20),
                                  child: Image.network(
                                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUyqZlK1U-tX7o4q5o4got4Y5XL9PPylOTC8T-QFtYebE1ZV5-OlKT0xCKCcEUwWKb--A&usqp=CAU',
                                    width: 180,
                                    height: 180,
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: Screenheight * 0.04),
                      SizedBox(
                        height: 140, // Set consistent height for cards
                        child: SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              _buildSectionCard(
                                title: 'Buy',
                                subtitle: 'Go to check your new car',
                              ),
                              _buildSectionCard(
                                title: 'Sell',
                                subtitle: 'Go to sell your old car',
                              ),
                              _buildSectionCard(
                                title: 'Sell',
                                subtitle: 'Go to sell your old car',
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(height: Screenheight * 0.03),
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: const Text(
                          'Top Categories',
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(height: Screenheight * 0.02),
                    ],
                  ),
                ),
                GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4, // 4 items per row
                    crossAxisSpacing: 12, // Spacing between items
                    mainAxisSpacing: 12, // Vertical spacing
                    childAspectRatio: 1, // Square shape
                  ),
                  itemCount: 8,
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemBuilder: (context, index) {
                    final List<Map<String, String>> categories = [
                      {
                        'name': 'Car',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/744/744465.png'
                      },
                      {
                        'name': 'Bike',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/3050/3050525.png'
                      },
                      {
                        'name': 'Scooter',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/1995/1995574.png'
                      },
                      {
                        'name': 'Bicycle',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/1830/1830839.png'
                      },
                      {
                        'name': 'Truck',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/2972/2972185.png'
                      },
                      {
                        'name': 'Bus/Van',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/3050/3050478.png'
                      },
                      {
                        'name': 'Heavy Vehicle',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/3076/3076104.png'
                      },
                      {
                        'name': 'Airplane',
                        'imageUrl':
                            'https://cdn-icons-png.flaticon.com/512/149/149071.png'
                      },
                    ];

                    return CategoryItem(
                      name: categories[index]['name']!,
                      imageUrl: categories[index]['imageUrl']!,
                    );
                  },
                ),
                SizedBox(height: Screenheight * 0.03),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text(
                        'Recommended cars',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      TextButton(
                        onPressed: () {},
                        child: const Text('See all'),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Screenheight * 0.02),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: [
                      ConstrainedBox(
                        constraints: BoxConstraints(
                            maxWidth: 300), // or whatever width you prefer
                        child: CarCard(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRUyqZlK1U-tX7o4q5o4got4Y5XL9PPylOTC8T-QFtYebE1ZV5-OlKT0xCKCcEUwWKb--A&usqp=CAU',
                          model: '2023 Hyundai i20',
                          price: '₹7,86,492',
                          variant: 'Sportz 1.2 Petrol',
                          kmDriven: '19,000 km',
                          fuelType: 'Petrol',
                          transmission: 'Manual',
                          location: 'Chennai',
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 300),
                        child: CarCard(
                          imageUrl:
                              'data:image/jpeg;base64,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',
                          model: '2021 Maruti Swift',
                          price: '₹6,40,000',
                          variant: 'VXi 1.2 Petrol',
                          kmDriven: '25,000 km',
                          fuelType: 'Petrol',
                          transmission: 'Manual',
                          location: 'Chennai',
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(maxWidth: 300),
                        child: CarCard(
                          imageUrl:
                              'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT21jOx1-56JNNFphVdddP08e76u-6J9Dj1dQ&s',
                          model: '2022 Tata Nexon',
                          price: '₹10,30,000',
                          variant: 'XZ+ 1.5 Diesel',
                          kmDriven: '15,000 km',
                          fuelType: 'Diesel',
                          transmission: 'Manual',
                          location: 'Chennai',
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: Screenheight * 0.02),
                // In your parent widget:
                SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      children: [
                        const ActiveCarsSection(),
                        // Add other widgets below
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSectionCard({
    required String title,
    required String subtitle,
    // required VoidCallback onTap,
  }) {
    return SizedBox(
      width: 250, // Set a finite width to avoid unbounded constraints
      child: Card(
        elevation: 2,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Expanded(
                    // Use Expanded instead of Spacer
                    child: Align(
                      alignment: Alignment.centerRight,
                      child: Icon(Icons.double_arrow,
                          color: Colors.purple, size: 20),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 5),
              Text(
                maxLines: 2,
                overflow:
                    TextOverflow.ellipsis, // Optional: Add an ellipsis (...)
                subtitle,
                style: const TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCarCard({
    required String model,
    required String price,
    required String variant,
    required String details,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              model,
              style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              price,
              style: const TextStyle(fontSize: 16, color: Colors.blue),
            ),
            const SizedBox(height: 5),
            Text(
              variant,
              style: const TextStyle(fontSize: 14),
            ),
            const SizedBox(height: 10),
            Text(
              details,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildActionCard({
    required String title,
    required String subtitle,
    required String buttonText,
  }) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 5),
            Text(
              subtitle,
              style: const TextStyle(fontSize: 14, color: Colors.grey),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.centerRight,
              child: ElevatedButton(
                onPressed: () {},
                child: Text(buttonText),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CategoryItem extends StatelessWidget {
  final String name;
  final String imageUrl;

  const CategoryItem({
    super.key,
    required this.name,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120, // Reduced height to prevent overflow
      width: 120, // Consistent square shape
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Container(
          color: Colors.grey[100],
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Flexible(
                // Prevents image overflow
                child: Image.network(
                  imageUrl,
                  width: 60,
                  height: 60,
                  fit: BoxFit.contain,
                ),
              ),
              const SizedBox(height: 5),
              Flexible(
                // Ensures the text fits properly
                child: Text(
                  name,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class SearchBarExample extends StatelessWidget {
  const SearchBarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 16),
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30), // Rounded corners
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Row(
        children: [
          const Expanded(
            child: TextField(
              decoration: InputDecoration(
                hintText: 'Search to buy user cars',
                border: InputBorder.none,
                hintStyle: TextStyle(
                  color: Colors.black54, // Text color
                  fontSize: 16,
                ),
              ),
            ),
          ),
          Container(
            height: 45,
            width: 45,
            decoration: const BoxDecoration(
              color: Color(0xFF7E3390), // Purple button color
              shape: BoxShape.circle, // Circular button
            ),
            child: const Icon(
              Icons.search,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}

class CarCard extends StatelessWidget {
  final String imageUrl;
  final String model;
  final String price;
  final String variant;
  final String kmDriven;
  final String fuelType;
  final String transmission;
  final String location;

  const CarCard({
    super.key,
    required this.imageUrl,
    required this.model,
    required this.price,
    required this.variant,
    required this.kmDriven,
    required this.fuelType,
    required this.transmission,
    required this.location,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Car Image with Like and Share Icons
          Stack(
            children: [
              ClipRRect(
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    topRight: Radius.circular(12),
                  ),
                  child: Container(
                    width: 300, // or whatever width you prefer
                    child: Image.network(
                      imageUrl,
                      fit: BoxFit.cover,
                      height: 180, // you already have height
                    ),
                  )),
              Positioned(
                top: 10,
                right: 10,
                child: Column(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      radius: 18,
                      child:
                          Icon(Icons.favorite_border, color: Colors.grey[600]),
                    ),
                    const SizedBox(height: 8),
                    Icon(Icons.share, color: Colors.grey[600]),
                  ],
                ),
              ),
            ],
          ),

          // Car Details
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      price,
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  variant,
                  style: const TextStyle(
                    fontSize: 14,
                    color: Colors.grey,
                  ),
                ),
                const SizedBox(height: 8),
              ],
            ),
          ),

          // Car Specs
          Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                _buildFeature(Icons.speed, kmDriven),
                _buildFeature(Icons.local_gas_station, fuelType),
                _buildFeature(Icons.settings, transmission),
                _buildFeature(Icons.location_on, location),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Feature Icon + Text Widget
  Widget _buildFeature(IconData icon, String text) {
    return Row(
      children: [
        Icon(icon, size: 18, color: Colors.grey[600]),
        const SizedBox(width: 4),
        Text(
          text,
          style: const TextStyle(
            fontSize: 12,
            color: Colors.black87,
          ),
        ),
      ],
    );
  }
}

class ActiveCarsSection extends StatefulWidget {
  const ActiveCarsSection({super.key});

  @override
  State<ActiveCarsSection> createState() => _ActiveCarsSectionState();
}

class _ActiveCarsSectionState extends State<ActiveCarsSection> {
  final PageController _pageController = PageController(viewportFraction: 0.8);
  int _currentPage = 0;

  final List<Map<String, dynamic>> cards = [
    {
      'title': 'Active S',
      'subtitle': 'Go to your ship',
      'buttonColor': Colors.blue,
      'buttonText': 'View',
    },
    {
      'title': 'Active S',
      'subtitle': 'the status of yo',
      'buttonColor': Colors.green,
      'buttonText': 'Track',
    },
    {
      'title': 'Active S',
      'subtitle': 'Go to Shipn',
      'buttonColor': Colors.orange,
      'buttonText': 'Details',
    },
    {
      'title': 'Active S',
      'subtitle': 'More options',
      'buttonColor': Colors.purple,
      'buttonText': 'More',
    },
  ];

  @override
  void initState() {
    super.initState();
    _pageController.addListener(() {
      setState(() {
        _currentPage = _pageController.page?.round() ?? 0;
      });
    });
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _buildCarousel(),
        const SizedBox(height: 8),
        _buildDotIndicator(),
      ],
    );
  }

  Widget _buildMainCard({
    required String title,
    required String subtitle,
    required Color buttonColor,
    required String buttonText,
  }) {
    return Container(
      width: 200,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.3),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 8),
          Text(
            subtitle,
            style: TextStyle(
              fontSize: 12,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              backgroundColor: buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            ),
            child: Text(
              buttonText,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildCarousel() {
    return SizedBox(
      height: 180,
      child: PageView.builder(
        controller: _pageController,
        itemCount: cards.length,
        itemBuilder: (context, index) {
          return _buildMainCard(
            title: cards[index]['title'],
            subtitle: cards[index]['subtitle'],
            buttonColor: cards[index]['buttonColor'],
            buttonText: cards[index]['buttonText'],
          );
        },
      ),
    );
  }

  Widget _buildDotIndicator() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(cards.length, (index) {
        return Container(
          width: 8,
          height: 8,
          padding: const EdgeInsets.symmetric(horizontal: 8),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: _currentPage == index
                ? Color(0xFF7E3390)
                : Colors.grey.withOpacity(0.4),
          ),
        );
      }),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color(0xFF7E3390), // Background color
      elevation: 0,
      leading: SizedBox(
        width: 150, // Fixed width to prevent overflow
        child: Row(
          children: [
            const SizedBox(width: 10), // Spacing from left
            const Icon(Icons.location_on_outlined, color: Colors.white),
            const SizedBox(width: 5),
            const Text(
              'Chennai',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Icon(Icons.chevron_right, color: Colors.white)
          ],
        ),
      ),
      actions: [
        Container(
          margin: const EdgeInsets.only(right: 10),
          decoration: BoxDecoration(
            color: Colors.white.withOpacity(0.2), // Circle background
            shape: BoxShape.circle,
          ),
          child: IconButton(
            icon: const Icon(Icons.notifications_on_outlined,
                color: Colors.white),
            onPressed: () {
              print("Notification clicked");
            },
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
