amal
C
# Main program
echo "Welcome to our Magic Train system!"
echo "Enjoy the ease and speed of booking train tickets through Magic Train"
# Get user credentials
get_user_credentials

choose_departure_city
choose_arrival_city
read -p "Enter the date of travel (YYYY-MM-DD): " travel_date
choose_time
declare -i num_tickets
read -p "Enter the number of tickets you want to book: " num_tickets
read -p "Do you want to book round trip? (yes/no): " round_trip

if [ "$round_trip" = "yes" ]; then
    validate_return_date
fi

read -p "Do you have a discount code? (yes/no): " has_discount

declare -i ticket_price
if [ "$has_discount" = "yes" ]; then
    read -p "Enter your discount code: " discount_code
fi

# Loop to book multiple tickets
for ((i=1; i<=$num_tickets; i++))
do
    echo ""
    echo "Ticket $i:"
    get_passenger_details
    choose_seat_type

    # Generate a unique ticket number
    declare -i ticket_number
    ticket_number="${RANDOM}"

    # Calculate ticket price based on seat type
    case $seat_type in
        "Normal") ticket_price=500;;
        "Business") ticket_price=1000;;
        *) ticket_price=0;;
    esac

    # Apply discount if applicable
    apply_discount

    # Offer payment options
    #if [ $i -eq $num_tickets ]; then
        #choose_payment_method
    #fi

    # Generate the ticket
    generate_ticket
    
    # Ask if user wants to modify the ticket
    read -p "Do you want to modify any details of your ticket? (yes/no): " modify_choice
    if [ "$modify_choice" = "yes" ]; then
        modify_ticket
        
        
    fi

    # Offer payment options
    if [ $i -eq $num_tickets ]; then
        choose_payment_method
    fi

    # For round trip, generate return ticket
    if [ "$round_trip" = "yes" ]; then
        echo ""
        echo "Return Ticket $i:"
        # Generate a unique ticket number for return
        ticket_number="${RANDOM}"

        # Use the stored passenger details for return ticket
        generate_ticket

       
        

        # Ask if user wants to modify the return ticket
        read -p "Do you want to modify any details of your return ticket? (yes/no): " modify_choice
        if [ "$modify_choice" = "yes" ]; then
            modify_ticket
        fi
        
         # Offer payment options for return ticket
        if [ $i -eq $num_tickets ]; then
            choose_payment_method
        fi
        
        echo "Your booking is confirmed! We are waiting to serve you with our best."
    fi
done
ت
اول شي
ا
.
.
هنا كودي كامل
كدا قصدك؟
ولا تبيه من جوا كمان؟
تمام
دقايق بس بركبلكم هما
فوق بعض
يسير اريحك
دقيقه بس
اركبو فوق بعض
اخليه صوره
سوري ما اقدر أفتح المايك🙏🏻
دقايق
لمار كل فنكشن حطيها لوحدها 
عشان احط صورتها
وتحته الشرح حقها
يكون اوضح
اوكي
كنت قاعده اجمعهم في صوره وحده
كذا يصير
..
# Main program
echo "Welcome to our Magic Train system!"
echo "Enjoy the ease and speed of booking train tickets through Magic Train"
# Get user credentials
get_user_credentials

choose_departure_city
choose_arrival_city
read -p "Enter the date of travel (YYYY-MM-DD): " travel_date
choose_time
declare -i num_tickets
read -p "Enter the number of tickets you want to book: " num_tickets
read -p "Do you want to book round trip? (yes/no): " round_trip

if [ "$round_trip" = "yes" ]; then
    validate_return_date
fi

read -p "Do you have a discount code? (yes/no): " has_discount

declare -i ticket_price
if [ "$has_discount" = "yes" ]; then
    read -p "Enter your discount code: " discount_code
fi

# Loop to book multiple tickets
for ((i=1; i<=$num_tickets; i++))
do
    echo ""
    echo "Ticket $i:"
    get_passenger_details
    choose_seat_type

    # Generate a unique ticket number
    declare -i ticket_number
    ticket_number="${RANDOM}"

    # Calculate ticket price based on seat type
    case $seat_type in
        "Normal") ticket_price=500;;
        "Business") ticket_price=1000;;
        *) ticket_price=0;;
    esac

    # Apply discount if applicable
    apply_discount

    # Offer payment options
    #if [ $i -eq $num_tickets ]; then
        #choose_payment_method
    #fi

    # Generate the ticket
    generate_ticket
    
    # Ask if user wants to modify the ticket
    read -p "Do you want to modify any details of your ticket? (yes/no): " modify_choice
    if [ "$modify_choice" = "yes" ]; then
        modify_ticket
        
        
    fi

    # Offer payment options
    if [ $i -eq $num_tickets ]; then
        choose_payment_method
    fi

    # For round trip, generate return ticket
    if [ "$round_trip" = "yes" ]; then
        echo ""
        echo "Return Ticket $i:"
        # Generate a unique ticket number for return
        ticket_number="${RANDOM}"

        # Use the stored passenger details for return ticket
        generate_ticket

       
        

        # Ask if user wants to modify the return ticket
        read -p "Do you want to modify any details of your return ticket? (yes/no): " modify_choice
        if [ "$modify_choice" = "yes" ]; then
            modify_ticket
        fi
        
         # Offer payment options for return ticket
        if [ $i -eq $num_tickets ]; then
            choose_payment_method
        fi
        
        echo "Your booking is confirmed! We are waiting to serve you with our best."
    fi
done
