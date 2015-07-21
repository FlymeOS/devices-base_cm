.class final Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;
.super Landroid/os/Handler;
.source "LiveDisplayController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LiveDisplayHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LiveDisplayController;Landroid/os/Looper;)V
    .locals 2
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 564
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    .line 565
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 566
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 570
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 590
    :cond_0
    :goto_0
    return-void

    .line 572
    :pswitch_0
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mTwilightManager:Lcom/android/server/twilight/TwilightManager;
    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->access$600(Lcom/android/server/display/LiveDisplayController;)Lcom/android/server/twilight/TwilightManager;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/server/twilight/TwilightManager;->getCurrentState()Lcom/android/server/twilight/TwilightState;

    move-result-object v1

    .line 574
    .local v1, "twilight":Lcom/android/server/twilight/TwilightState;
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateColorTemperature(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v1}, Lcom/android/server/display/LiveDisplayController;->access$700(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 575
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateOutdoorMode(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v1}, Lcom/android/server/display/LiveDisplayController;->access$800(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 576
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateColorEnhancement(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v1}, Lcom/android/server/display/LiveDisplayController;->access$900(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 577
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateLowPowerMode()V
    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->access$1000(Lcom/android/server/display/LiveDisplayController;)V

    .line 578
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # invokes: Lcom/android/server/display/LiveDisplayController;->updateUserHint(Lcom/android/server/twilight/TwilightState;)V
    invoke-static {v3, v1}, Lcom/android/server/display/LiveDisplayController;->access$1100(Lcom/android/server/display/LiveDisplayController;Lcom/android/server/twilight/TwilightState;)V

    .line 580
    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mMode:I
    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->access$1200(Lcom/android/server/display/LiveDisplayController;)I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I
    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->access$1300(Lcom/android/server/display/LiveDisplayController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mDayTemperature:I
    invoke-static {v4}, Lcom/android/server/display/LiveDisplayController;->access$1400(Lcom/android/server/display/LiveDisplayController;)I

    move-result v4

    if-eq v3, v4, :cond_1

    iget-object v3, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mColorTemperature:I
    invoke-static {v3}, Lcom/android/server/display/LiveDisplayController;->access$1300(Lcom/android/server/display/LiveDisplayController;)I

    move-result v3

    iget-object v4, p0, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mNightTemperature:I
    invoke-static {v4}, Lcom/android/server/display/LiveDisplayController;->access$1500(Lcom/android/server/display/LiveDisplayController;)I

    move-result v4

    if-eq v3, v4, :cond_1

    move v0, v2

    .line 583
    .local v0, "transition":Z
    :goto_1
    if-eqz v0, :cond_0

    .line 585
    const-wide/32 v4, 0xea60

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/server/display/LiveDisplayController$LiveDisplayHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    .line 580
    .end local v0    # "transition":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 570
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
