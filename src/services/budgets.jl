include("../AWSCorePrototypeServices.jl")
using .Services: budgets

"""
Lists the subscribers that are associated with a notification.

Required Parameters:
AccountId, BudgetName, Notification
"""
DescribeSubscribersForNotification(args) = budgets("DescribeSubscribersForNotification", args)

"""
Deletes a budget. You can delete your budget at any time.  Deleting a budget also deletes the notifications and subscribers that are associated with that budget. 

Required Parameters:
AccountId, BudgetName
"""
DeleteBudget(args) = budgets("DeleteBudget", args)

"""
Lists the budgets that are associated with an account.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

Required Parameters:
AccountId
"""
DescribeBudgets(args) = budgets("DescribeBudgets", args)

"""
Creates a budget and, if included, notifications and subscribers.   Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

Required Parameters:
AccountId, Budget
"""
CreateBudget(args) = budgets("CreateBudget", args)

"""
Deletes a subscriber.  Deleting the last subscriber to a notification also deletes the notification. 

Required Parameters:
AccountId, BudgetName, Notification, Subscriber
"""
DeleteSubscriber(args) = budgets("DeleteSubscriber", args)

"""
Updates a notification.

Required Parameters:
AccountId, BudgetName, OldNotification, NewNotification
"""
UpdateNotification(args) = budgets("UpdateNotification", args)

"""
Creates a notification. You must create the budget before you create the associated notification.

Required Parameters:
AccountId, BudgetName, Notification, Subscribers
"""
CreateNotification(args) = budgets("CreateNotification", args)

"""
Creates a subscriber. You must create the associated budget and notification before you create the subscriber.

Required Parameters:
AccountId, BudgetName, Notification, Subscriber
"""
CreateSubscriber(args) = budgets("CreateSubscriber", args)

"""
Describes a budget.  The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

Required Parameters:
AccountId, BudgetName
"""
DescribeBudget(args) = budgets("DescribeBudget", args)

"""
Updates a budget. You can change every part of a budget except for the budgetName and the calculatedSpend. When you modify a budget, the calculatedSpend drops to zero until AWS has new usage data to use for forecasting.  Only one of BudgetLimit or PlannedBudgetLimits can be present in the syntax at one time. Use the syntax that matches your case. The Request Syntax section shows the BudgetLimit syntax. For PlannedBudgetLimits, see the Examples section.  

Required Parameters:
AccountId, NewBudget
"""
UpdateBudget(args) = budgets("UpdateBudget", args)

"""
Describes the history for DAILY, MONTHLY, and QUARTERLY budgets. Budget history isn't available for ANNUAL budgets.

Required Parameters:
AccountId, BudgetName
"""
DescribeBudgetPerformanceHistory(args) = budgets("DescribeBudgetPerformanceHistory", args)

"""
Lists the notifications that are associated with a budget.

Required Parameters:
AccountId, BudgetName
"""
DescribeNotificationsForBudget(args) = budgets("DescribeNotificationsForBudget", args)

"""
Updates a subscriber.

Required Parameters:
AccountId, BudgetName, Notification, OldSubscriber, NewSubscriber
"""
UpdateSubscriber(args) = budgets("UpdateSubscriber", args)

"""
Deletes a notification.  Deleting a notification also deletes the subscribers that are associated with the notification. 

Required Parameters:
AccountId, BudgetName, Notification
"""
DeleteNotification(args) = budgets("DeleteNotification", args)
