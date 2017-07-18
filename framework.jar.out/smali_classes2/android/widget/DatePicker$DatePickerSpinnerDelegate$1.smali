.class Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/widget/NumberPicker$OnValueChangeListener;


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
    .line 620
    iput-object p1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPicker;II)V
    .locals 8
    .param p1, "picker"    # Landroid/widget/NumberPicker;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 622
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 623
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 625
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 626
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 627
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 628
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 648
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    iget-object v2, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v2}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v3}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    .line 649
    iget-object v4, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    .line 648
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap1(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;III)V

    .line 650
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 651
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 652
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-wrap0(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)V

    .line 621
    return-void

    .line 629
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 630
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 632
    :cond_1
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 634
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get2(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 635
    const/16 v1, 0xb

    if-ne p2, v1, :cond_3

    if-nez p3, :cond_3

    .line 636
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 637
    :cond_3
    if-nez p2, :cond_4

    const/16 v1, 0xb

    if-ne p3, v1, :cond_4

    .line 638
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 640
    :cond_4
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 642
    :cond_5
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get4(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Landroid/widget/NumberPicker;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 643
    iget-object v1, p0, Landroid/widget/DatePicker$DatePickerSpinnerDelegate$1;->this$1:Landroid/widget/DatePicker$DatePickerSpinnerDelegate;

    invoke-static {v1}, Landroid/widget/DatePicker$DatePickerSpinnerDelegate;->-get3(Landroid/widget/DatePicker$DatePickerSpinnerDelegate;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 645
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
