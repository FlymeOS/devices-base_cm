.class Lcom/android/server/display/LiveDisplayController$3;
.super Ljava/lang/Object;
.source "LiveDisplayController.java"

# interfaces
.implements Lcom/android/server/twilight/TwilightListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LiveDisplayController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LiveDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/LiveDisplayController;)V
    .locals 0

    .prologue
    .line 565
    iput-object p1, p0, Lcom/android/server/display/LiveDisplayController$3;->this$0:Lcom/android/server/display/LiveDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTwilightStateChanged()V
    .locals 2

    .prologue
    .line 568
    iget-object v0, p0, Lcom/android/server/display/LiveDisplayController$3;->this$0:Lcom/android/server/display/LiveDisplayController;

    iget-object v1, p0, Lcom/android/server/display/LiveDisplayController$3;->this$0:Lcom/android/server/display/LiveDisplayController;

    # getter for: Lcom/android/server/display/LiveDisplayController;->mCurrentLux:F
    invoke-static {v1}, Lcom/android/server/display/LiveDisplayController;->access$100(Lcom/android/server/display/LiveDisplayController;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/display/LiveDisplayController;->updateLiveDisplay(F)V

    .line 569
    return-void
.end method
