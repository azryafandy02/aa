import 'package:flutter/material.dart';
import 'package:ptest1/features/personalization/screens/profile/widget/profile_menu.dart';
import 'package:ptest1/utils/constants/sizes.dart';
import 'package:ptest1/utils/constants/image_strings.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ptest1/common/widgets/appbar/appbar.dart';
import 'package:ptest1/common/widgets/images/t_circular_images.dart';
import 'package:ptest1/common/widgets/heading/section_heading.dart';
//until line 11
class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: TAppBar(showBackArrow: true, title: Text('Profile')),

        //body
        body: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(TSizes.defaultSpace),
              child: Column(
                children: [
                  //profile user
                  SizedBox(
                      width: double.infinity,
                      child: Column(
                        children: [
                          const TCircularImage(image: TImages.user, width: 80, height: 80),
                          TextButton(onPressed: (){}, child: const Text('Change Profile Picture')),
                        ],
                      ),
                  ),

                  ///Details
                  const SizedBox(height: TSizes.spaceBtwItems / 2),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///heading profile info
                  const TSectionHeading(title: 'Profile Information', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TProfileMenu(title: 'Name', value: 'Coding with T', onPressed: () {}),
                  TProfileMenu(title: 'Username', value: 'coding_with_t', onPressed: () {}),

                  const SizedBox(height: TSizes.spaceBtwItems),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  ///Heading personal info
                  const TSectionHeading(title: 'Personal Information', showActionButton: false),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  TProfileMenu(title: 'User 10', value: '45689', icon: Iconsax.copy, onPressed: () {}),
                  TProfileMenu(title: 'Email', value: 'coding_with_t', onPressed: () {}),
                  TProfileMenu(title: 'Phone Number', value: '+6012-3456789', onPressed: () {}),
                  TProfileMenu(title: 'Gender', value: 'Male', onPressed: () {}),
                  TProfileMenu(title: 'Date of Birth', value: '10 Oct 1994', onPressed: () {}),
                  const Divider(),
                  const SizedBox(height: TSizes.spaceBtwItems),

                  Center(
                    child: TextButton(
                      onPressed: (){},
                      child: const Text('Close Account', style: TextStyle(color: Colors.red)),

                    ),
                  ),
                ],
              ),
            ),
            ),
        );
    }
}