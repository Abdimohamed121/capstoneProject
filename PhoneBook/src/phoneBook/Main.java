package phoneBook;

import java.util.Scanner;

public class Main {
	static Person people;
	static String[] person = {};
	static String firstName, lastName, phoneNumber, street, city, state, zipCode; 
	static String contactInfo;
	static int choice;

	public static void main(String[] args) {
		Scanner input = new Scanner(System.in);
		
		int menuOption;
		do {
			System.out.println("\nMAIN MENU\n1. Add Contact:\n2. Search Contact:\n3. Display All Contacts:\n4. Update or Delete Contact:\n5. Terminate Program:\n");
			menuOption = input.nextInt();
			
			switch(menuOption) {
			case 1:
				if(menuOption == 1) {
					String[] newArray = new String[person.length +1];
					for(int i = 0; i < person.length; i++) {
						newArray[i] = person[i];
					}
					String info = addPerson();
					newArray[newArray.length - 1] = info;
					System.out.println("\nNew Contact Added: " + info + "\n");
					person = newArray;
				}
			case 2:
				if(menuOption == 2) {
					System.out.println("\nSearch Menu:\n");
					searchMenu(choice, contactInfo);
					break;
	
				}
			case 3:
				if(menuOption == 3) {
					System.out.println("\nAll Contacts:\n");
					for(int i = 0; i < person.length; i++) {
						System.out.println("\n"+ person[i] + "\n");
					}
					break;
					
				}
			case 4:
				if(menuOption == 4) {
					System.out.println("\nDelete/Update Menu:\n");
					updateDelete(choice, contactInfo);
					break;
					
				}
			
			}
			
		}while(menuOption != 5);
		System.out.println("Program Terminated!");
		

	}
	
	public static String addPerson() {
        Scanner input = new Scanner(System.in);
        System.out.println("\nEnter First name: ");
        firstName = input.nextLine();
        System.out.println("\nEnter Last name: ");
        lastName = input.nextLine();
        System.out.println("\nEnter Phone Number: ");
        phoneNumber = input.nextLine();
        System.out.println("\nEnter House Number And Street Name: ");
        street = input.nextLine();
        System.out.println("\nEnter City: ");
        city = input.nextLine();
        System.out.println("\nEnter State: ");
        state = input.nextLine();
        System.out.println("\nEnter Zip: ");
        zipCode = input.nextLine();

        people = new Person(firstName, lastName, phoneNumber, street, city, state, zipCode);
        String result = people.getFirstName() + " " + people.getLastName() + ", " + "(" + people.getPhoneNumber().substring(0,3) + ") "  + people.getPhoneNumber().substring(3,6) +"-"+ people.getPhoneNumber().substring(6,10) + ", " + people.address.getStreet() + ", " + people.address.getCity() + ", " + people.address.getState() + " " + people.address.getZipCode();

        return result;
    }
	
	public static void searchMenu(int choice, String contact) {
		Scanner input = new Scanner(System.in);
		System.out.println("\n1. Search contact by phone number:\n2. Search contact by name, street, city, state, or zip code\n3. Return to main menu:");
		choice = input.nextInt();
		
		for(int i = 0; i < person.length; i++) {
			if(choice == 1) {
				System.out.println("Enter contact phone number:");
				contact = input.next();
				contact = "(" + contact.substring(0,3) + ") "  + contact.substring(3,6) +"-"+ contact.substring(6,10);
				if(person[i].contains(contact)) {
						System.out.println("Contact: " + person[i] );
					}
					
					break;
				
			}
			else if(choice == 2) {
				System.out.println("\nEnter Contact info:");
				contact = input.next();
					if(person[i].contains(contact)) {
						System.out.println("Contact: " + person[i]);
					
						break;
					}
				
			}else if(choice == 3) {
				break;
			}
		}
	}
	
	public static void updateDelete(int option, String str) {
		Scanner input = new Scanner(System.in);
		System.out.println("\n1. Update Contact:\n2. Delete Contact:\n3. Return to main menu:");
		option = input.nextInt();
		for(int i = 0; i < person.length; i++) {
			if(option == 1) {
				System.out.println("\nEnter Contact phone number:\n");
				str = input.next();
				str = "(" + str.substring(0,3) + ") "  + str.substring(3,6) +"-"+ str.substring(6,10);
				if(person[i].contains(str)) {
					System.out.println("\nUpdate: " + person[i] + "\n");
					String contact = addPerson();
					System.out.println("\nContact updated: \n" + contact + "\n");
					person[i] = contact;
					
				}else {
					System.out.println("\nContact not found!\n");
				}
			}
			if(option == 2) {
				System.out.println("\nEnter the phone number of contact to be deleted: \n");
				str = input.next();
				str = "(" + str.substring(0,3) + ") "  + str.substring(3,6) +"-"+ str.substring(6,10);
				if(person[i].contains(str)) {
					System.out.println("\nDeleted: \n" + person[i] + "\n");
					person[i] = null;
				}else {
					System.out.println("\nContact not found!\n");
				}
			}
			if(option == 3) {
				break;
			}
		}
	}
	
	

}
