.class Landroid/widget/DatePickerCalendarDelegate$3;
.super Ljava/lang/Object;
.source "DatePickerCalendarDelegate.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePickerCalendarDelegate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DatePickerCalendarDelegate;


# direct methods
.method constructor <init>(Landroid/widget/DatePickerCalendarDelegate;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/DatePickerCalendarDelegate;

    .prologue
    .line 276
    iput-object p1, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 279
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    invoke-static {v0}, Landroid/widget/DatePickerCalendarDelegate;->-wrap2(Landroid/widget/DatePickerCalendarDelegate;)V

    .line 281
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 278
    :goto_0
    return-void

    .line 283
    :pswitch_0
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_0

    .line 286
    :pswitch_1
    iget-object v0, p0, Landroid/widget/DatePickerCalendarDelegate$3;->this$0:Landroid/widget/DatePickerCalendarDelegate;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/widget/DatePickerCalendarDelegate;->-wrap1(Landroid/widget/DatePickerCalendarDelegate;I)V

    goto :goto_0

    .line 281
    nop

    :pswitch_data_0
    .packed-switch 0x1020322
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
