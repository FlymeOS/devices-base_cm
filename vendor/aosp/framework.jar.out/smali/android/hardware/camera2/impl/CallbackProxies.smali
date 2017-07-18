.class public Landroid/hardware/camera2/impl/CallbackProxies;
.super Ljava/lang/Object;
.source "CallbackProxies.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/camera2/impl/CallbackProxies$DeviceStateCallbackProxy;,
        Landroid/hardware/camera2/impl/CallbackProxies$DeviceCaptureCallbackProxy;,
        Landroid/hardware/camera2/impl/CallbackProxies$SessionStateCallbackProxy;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 188
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
