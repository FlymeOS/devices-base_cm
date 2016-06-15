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
    .line 57
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

    .line 60
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 61
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 63
    :pswitch_0
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 64
    const-string v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAKE_UP_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    :cond_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemePackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 70
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_THEME_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialThemeStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 73
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 74
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpIntent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 75
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 76
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$700(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3e9

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeIntervalTime:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$600(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 78
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # operator-- for: Landroid/content/res/flymetheme/FlymeThemeService;->mThemeWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$110(Landroid/content/res/flymetheme/FlymeThemeService;)I

    goto/16 :goto_0

    .line 82
    :pswitch_1
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 83
    const-string v1, "FlymeThemeService"

    const-string v2, "CHANGE_WALLPAPER_MESSAGE------TimeOut"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :cond_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$800(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperIntent:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$800(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 87
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

    .line 88
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperType:Ljava/lang/String;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$900(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mChangeWallpaperTime:J
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1000(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 90
    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 92
    :cond_3
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_0

    .line 96
    .end local v0    # "changeWallpaperIntent":Landroid/content/Intent;
    :pswitch_2
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->DEBUG:Z
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$000(Landroid/content/res/flymetheme/FlymeThemeService;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 97
    const-string v1, "FlymeThemeService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WAKE_UP_FONT_TRIAL_SERVICE_MESSAGE--"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "    "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v2, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    :cond_4
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_PACKAGENAME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontPackageName:Ljava/lang/String;
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1200(Landroid/content/res/flymetheme/FlymeThemeService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 102
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    sget-object v2, Landroid/content/res/flymetheme/FlymeThemeManager;->FLYME_FONT_TRAIL_START_TIME_EXTRA:Ljava/lang/String;

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mTrialFontStartTime:J
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1300(Landroid/content/res/flymetheme/FlymeThemeService;)J

    move-result-wide v4

    invoke-virtual {v1, v2, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 104
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 105
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$500(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpIntent:Landroid/content/Intent;
    invoke-static {v2}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1400(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 106
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1100(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v1

    if-lez v1, :cond_0

    .line 107
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mHandler:Landroid/os/Handler;
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$700(Landroid/content/res/flymetheme/FlymeThemeService;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3eb

    iget-object v3, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # getter for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontIntervalTime:I
    invoke-static {v3}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1500(Landroid/content/res/flymetheme/FlymeThemeService;)I

    move-result v3

    int-to-long v4, v3

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 109
    iget-object v1, p0, Landroid/content/res/flymetheme/FlymeThemeService$1;->this$0:Landroid/content/res/flymetheme/FlymeThemeService;

    # operator-- for: Landroid/content/res/flymetheme/FlymeThemeService;->mFontWakeUpCount:I
    invoke-static {v1}, Landroid/content/res/flymetheme/FlymeThemeService;->access$1110(Landroid/content/res/flymetheme/FlymeThemeService;)I

    goto/16 :goto_0

    .line 61
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
