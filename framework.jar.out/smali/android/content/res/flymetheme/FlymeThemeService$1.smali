.class Landroid/content/res/flymetheme/FlymeThemeService$1;
.super Landroid/content/BroadcastReceiver;
.source "FlymeThemeService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/res/flymetheme/FlymeThemeService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/content/res/flymetheme/FlymeThemeService;


# direct methods
.method constructor <init>(Landroid/content/res/flymetheme/FlymeThemeService;)V
    .locals 0
    .param p1, "this$0"    # Landroid/content/res/flymetheme/FlymeThemeService;

    .prologue
    .line 53
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeService;->-wrap0(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeService;->-get1(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "com.meizu.customizecenter"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 59
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->-get1(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 60
    iget-object v0, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-static {v0}, Landroid/content/res/flymetheme/FlymeThemeService;->-get5(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/content/res/flymetheme/FlymeThemeManager;->LAST_TIME_SEND_CC_SCREEN_OFF_BROADCAST:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z

    .line 55
    :cond_0
    return-void
.end method
