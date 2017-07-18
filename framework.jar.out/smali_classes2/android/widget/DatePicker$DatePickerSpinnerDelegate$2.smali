.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/CalendarView$OnDateChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DatePicker$DatePickerSpinnerDelegate;-><init>(Landroid/widget/DatePicker;Landroid/content/Context;Landroid/util/AttributeSet;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V
    .locals 0
    .param p1, "this$1"    # Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    .prologue
    .line 660
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSelectedDayChange(Landroid/widget/CalendarView;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/CalendarView;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "monthDay"    # I

    .prologue
    .line 662
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0, p2, p3, p4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 663
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 664
    iget-object v0, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$2;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v0}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 661
    return-void
.end method
