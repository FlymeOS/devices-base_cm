.class Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;
.super Ljava/lang/Object;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VolumeWeightedEMA"
.end annotation


# instance fields
.field private final mAlpha:D

.field private mProduct:D

.field private mValue:D

.field private mVolume:D

.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    return-wide v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;)D
    .locals 2

    iget-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;D)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;
    .param p2, "coefficient"    # D

    .prologue
    const-wide/16 v0, 0x0

    .line 1002
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1003
    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    .line 1004
    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    .line 1005
    iput-wide v0, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    .line 1006
    iput-wide p2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    .line 1002
    return-void
.end method


# virtual methods
.method public update(DI)V
    .locals 11
    .param p1, "newValue"    # D
    .param p3, "newVolume"    # I

    .prologue
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    .line 1010
    if-gtz p3, :cond_0

    return-void

    .line 1012
    :cond_0
    int-to-double v2, p3

    mul-double v0, p1, v2

    .line 1013
    .local v0, "newProduct":D
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    mul-double/2addr v2, v0

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    .line 1014
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    int-to-double v4, p3

    mul-double/2addr v2, v4

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mAlpha:D

    sub-double v4, v8, v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    .line 1015
    iget-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mProduct:D

    iget-wide v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mVolume:D

    div-double/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$VolumeWeightedEMA;->mValue:D

    .line 1009
    return-void
.end method
