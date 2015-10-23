.class Landroid/widget/SimpleMonthAdapter$1;
.super Ljava/lang/Object;
.source "SimpleMonthAdapter.java"

# interfaces
.implements Landroid/widget/SimpleMonthView$OnDayClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SimpleMonthAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/SimpleMonthAdapter;


# direct methods
.method constructor <init>(Landroid/widget/SimpleMonthAdapter;)V
    .locals 0

    .prologue
    .line 197
    iput-object p1, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDayClick(Landroid/widget/SimpleMonthView;Ljava/util/Calendar;)V
    .locals 2
    .param p1, "view"    # Landroid/widget/SimpleMonthView;
    .param p2, "day"    # Ljava/util/Calendar;

    .prologue
    .line 200
    if-eqz p2, :cond_0

    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    # invokes: Landroid/widget/SimpleMonthAdapter;->isCalendarInRange(Ljava/util/Calendar;)Z
    invoke-static {v0, p2}, Landroid/widget/SimpleMonthAdapter;->access$000(Landroid/widget/SimpleMonthAdapter;Ljava/util/Calendar;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    invoke-virtual {v0, p2}, Landroid/widget/SimpleMonthAdapter;->setSelectedDay(Ljava/util/Calendar;)V

    .line 203
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    # getter for: Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/SimpleMonthAdapter;->access$100(Landroid/widget/SimpleMonthAdapter;)Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    # getter for: Landroid/widget/SimpleMonthAdapter;->mOnDaySelectedListener:Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;
    invoke-static {v0}, Landroid/widget/SimpleMonthAdapter;->access$100(Landroid/widget/SimpleMonthAdapter;)Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/SimpleMonthAdapter$1;->this$0:Landroid/widget/SimpleMonthAdapter;

    invoke-interface {v0, v1, p2}, Landroid/widget/SimpleMonthAdapter$OnDaySelectedListener;->onDaySelected(Landroid/widget/SimpleMonthAdapter;Ljava/util/Calendar;)V

    .line 207
    :cond_0
    return-void
.end method
