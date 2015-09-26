.class Landroid/content/res/flymetheme/FlymeThemeService$1;
.super Landroid/os/Handler;
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

    .prologue
    .line 49
    iput-object p1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v6, 0x20

    .line 52
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 53
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 55
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 56
    const-string v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAKE_UP_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpCount:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 63
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 64
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpIntent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 65
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 66
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$700(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mIntervalTime:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$600(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 68
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # operator-- for: Landroid/content/res/flymetheme/FlymeThemeService;->mWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$110(Landroid/content/res/flymetheme/FlymeThemeService;)I

    goto/16 :goto_0

    .line 72
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 73
    const-string v1, "FlymeThemeService"

    const-string v2, "CHANGE_WALLPAPER_MESSAGE------TimeOut"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$800(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$800(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 77
    .local v0, "changeWallpaperIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$900(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    const-string v1, ""

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$900(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 78
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$900(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1000(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 80
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 82
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 53
    nop

    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
