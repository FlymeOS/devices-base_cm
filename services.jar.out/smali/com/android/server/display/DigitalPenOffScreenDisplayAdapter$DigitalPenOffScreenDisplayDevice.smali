.class final Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;
.super Lcom/android/server/display/DisplayDevice;
.source "DigitalPenOffScreenDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DigitalPenOffScreenDisplayDevice"
.end annotation


# instance fields
.field private final mDensityDpi:I

.field private final mFlags:I

.field private mHeight:I

.field private mInfo:Lcom/android/server/display/DisplayDeviceInfo;

.field private mName:Ljava/lang/String;

.field private final mRefreshRate:F

.field private final mTouch:I

.field private final mType:I

.field private mWidth:I

.field private final mXDpi:F

.field private final mYDpi:F

.field final synthetic this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;Landroid/os/IBinder;)V
    .locals 3
    .param p2, "displayToken"    # Landroid/os/IBinder;

    .prologue
    const/4 v2, 0x2

    const/high16 v1, 0x43200000    # 160.0f

    .line 132
    iput-object p1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->this$0:Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;

    .line 133
    const-string v0, "digitalpen:1"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/display/DisplayDevice;-><init>(Lcom/android/server/display/DisplayAdapter;Landroid/os/IBinder;Ljava/lang/String;)V

    .line 134
    invoke-static {}, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    .line 135
    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    .line 136
    const/16 v0, 0x280

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    .line 137
    const/high16 v0, 0x42700000    # 60.0f

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mRefreshRate:F

    .line 138
    const/16 v0, 0xa0

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mDensityDpi:I

    .line 139
    iput v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mXDpi:F

    .line 140
    iput v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mYDpi:F

    .line 141
    iput v2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mFlags:I

    .line 142
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mType:I

    .line 143
    iput v2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mTouch:I

    .line 144
    return-void
.end method


# virtual methods
.method public getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    if-nez v0, :cond_0

    .line 149
    const-string v0, "DigitalPenOffScreenDisplayAdapter"

    const-string v1, "mInfo is null, getting a new one"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    new-instance v0, Lcom/android/server/display/DisplayDeviceInfo;

    invoke-direct {v0}, Lcom/android/server/display/DisplayDeviceInfo;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 151
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget-object v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mName:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->name:Ljava/lang/String;

    .line 152
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->width:I

    .line 153
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->height:I

    .line 154
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mRefreshRate:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->refreshRate:F

    .line 155
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mDensityDpi:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->densityDpi:I

    .line 156
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mXDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->xDpi:F

    .line 157
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mYDpi:F

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->yDpi:F

    .line 158
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mFlags:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->flags:I

    .line 159
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mType:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->type:I

    .line 160
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    iget v1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mTouch:I

    iput v1, v0, Lcom/android/server/display/DisplayDeviceInfo;->touch:I

    .line 162
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    return-object v0
.end method

.method public setDimesionsLocked(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 166
    iput p2, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mHeight:I

    .line 167
    iput p1, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mWidth:I

    .line 168
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/display/DigitalPenOffScreenDisplayAdapter$DigitalPenOffScreenDisplayDevice;->mInfo:Lcom/android/server/display/DisplayDeviceInfo;

    .line 169
    return-void
.end method
