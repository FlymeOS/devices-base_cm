.class Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;
.super Landroid/content/BroadcastReceiver;
.source "CalendarDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/drawable/CalendarDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/drawable/CalendarDrawable;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;->this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 97
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 98
    .local v0, "action":Ljava/lang/String;
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "android.intent.action.DATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    :cond_0
    # getter for: Landroid/content/res/flymetheme/drawable/CalendarDrawable;->DEBUG:Ljava/lang/Boolean;
    invoke-static {}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->access$100()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 101
    # getter for: Landroid/content/res/flymetheme/drawable/CalendarDrawable;->LOG_TAG:Ljava/lang/String;
    invoke-static {}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->access$200()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ACTION_TIME_CHANGED || ACTION_DATE_CHANGED"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/drawable/CalendarDrawable$2;->this$0:Landroid/content/res/flymetheme/drawable/CalendarDrawable;

    invoke-virtual {v1}, Landroid/content/res/flymetheme/drawable/CalendarDrawable;->update()V

    .line 105
    :cond_2
    return-void
.end method
