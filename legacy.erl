-module(legacy).

-export([
    register_customer/4,
    register_customer/5,
    register_customer/6,
    register_customer/7,
    register_customer/8,
    login_customer/2,
    get_customer/1,
    update_customer_profile/4,
    reset_password/2,
    verify_email/1,
    add_payment_method/7,
    add_payment_method/8,
    list_payment_methods/1,
    delete_payment_method/1,
    process_payment/3,
    process_payment/4,
    process_payment/5,
    process_payment/6,
    list_payments/1,
    get_payment_details/1,
    create_refund/2,
    create_refund/3,
    process_refund/1,
    simulate_chargeback/2,
    simulate_chargeback/3,
    resolve_chargeback/1,
    resolve_chargeback/2,
    create_fraud_review/2,
    create_fraud_review/3,
    decide_fraud_review/4,
    admin_list_all_customers/0,
    admin_export_all_data/0,
    search_payments/1,
    process_recurring_billing/0,
    handle_webhook/1,
    ban_customer/1,
    generate_api_key/1
]).

register_customer(Username, Email, Password, FullName) ->
    register_customer(Username, Email, Password, FullName, "").

register_customer(Username, Email, Password, FullName, Phone) ->
    register_customer(Username, Email, Password, FullName, Phone, "RS").

register_customer(Username, Email, Password, FullName, Phone, Country) ->
    register_customer(Username, Email, Password, FullName, Phone, Country, "").

register_customer(Username, Email, Password, FullName, Phone, Country, City) ->
    register_customer(Username, Email, Password, FullName, Phone, Country, City, "").

register_customer(_Username, _Email, _Password, _FullName, _Phone, _Country, _City, _Address) ->
    ok.

login_customer(_Username, _Password) ->
    ok.

get_customer(_CustomerId) ->
    ok.

update_customer_profile(_CustomerId, _NewEmail, _NewPhone, _NewAddress) ->
    ok.

reset_password(_Email, _NewPassword) ->
    ok.

verify_email(_Token) ->
    ok.

add_payment_method(CustomerId, Type, CardNumber, ExpiryMonth, ExpiryYear, Cvv, HolderName) ->
    add_payment_method(CustomerId, Type, CardNumber, ExpiryMonth, ExpiryYear, Cvv, HolderName, "").

add_payment_method(_CustomerId, _Type, _CardNumber, _ExpiryMonth, _ExpiryYear, _Cvv, _HolderName, _Iban) ->
    ok.

list_payment_methods(_CustomerId) ->
    ok.

delete_payment_method(_PmId) ->
    ok.

process_payment(CustomerId, PaymentMethodId, Amount) ->
    process_payment(CustomerId, PaymentMethodId, Amount, "EUR").

process_payment(CustomerId, PaymentMethodId, Amount, Currency) ->
    process_payment(CustomerId, PaymentMethodId, Amount, Currency, undefined).

process_payment(CustomerId, PaymentMethodId, Amount, Currency, ExternalOrderId) ->
    process_payment(CustomerId, PaymentMethodId, Amount, Currency, ExternalOrderId, undefined).

process_payment(_CustomerId, _PaymentMethodId, _Amount, _Currency, _ExternalOrderId, _Ip) ->
    ok.

list_payments(_CustomerId) ->
    ok.

get_payment_details(_PaymentId) ->
    ok.

create_refund(PaymentId, Amount) ->
    create_refund(PaymentId, Amount, "customer request").

create_refund(_PaymentId, _Amount, _Reason) ->
    ok.

process_refund(_RefundId) ->
    ok.

simulate_chargeback(PaymentId, Amount) ->
    simulate_chargeback(PaymentId, Amount, "fraud").

simulate_chargeback(_PaymentId, _Amount, _Reason) ->
    ok.

resolve_chargeback(ChargebackId) ->
    resolve_chargeback(ChargebackId, "true").

resolve_chargeback(_ChargebackId, _Won) ->
    ok.

create_fraud_review(PaymentId, CustomerId) ->
    create_fraud_review(PaymentId, CustomerId, "85").

create_fraud_review(_PaymentId, _CustomerId, _Score) ->
    ok.

decide_fraud_review(_ReviewId, _Decision, _ReviewerEmail, _ReviewerPassword) ->
    ok.

admin_list_all_customers() ->
    ok.

admin_export_all_data() ->
    ok.

search_payments(_SearchTerm) ->
    ok.

process_recurring_billing() ->
    ok.

handle_webhook(_Payload) ->
    ok.

ban_customer(_CustomerId) ->
    ok.

generate_api_key(_CustomerId) ->
    ok.
