.class Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;
.super Ljava/lang/Object;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/cyanogenmod/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "State"
.end annotation


# instance fields
.field public mLowPowerMode:Z

.field public mMode:I

.field public mScreenOn:Z

.field public mTwilight:Lcom/android/server/twilight/TwilightState;


# direct methods
.method constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 121
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    .line 122
    iput-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    .line 123
    const/4 v0, -0x1

    iput v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    .line 124
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    .line 120
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 129
    const-string/jumbo v1, "[mLowPowerMode=%b, mScreenOn=%b, mMode=%d, mTwilight=%s"

    .line 128
    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    .line 130
    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mLowPowerMode:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x0

    aput-object v0, v2, v3

    iget-boolean v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mScreenOn:Z

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v3, 0x1

    aput-object v0, v2, v3

    iget v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mMode:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x2

    aput-object v0, v2, v3

    .line 131
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    if-nez v0, :cond_0

    const-string/jumbo v0, "NULL"

    :goto_0
    const/4 v3, 0x3

    aput-object v0, v2, v3

    .line 128
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 131
    :cond_0
    iget-object v0, p0, Lorg/cyanogenmod/platform/internal/display/LiveDisplayService$State;->mTwilight:Lcom/android/server/twilight/TwilightState;

    invoke-virtual {v0}, Lcom/android/server/twilight/TwilightState;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
