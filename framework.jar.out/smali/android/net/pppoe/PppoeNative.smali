.class public Landroid/net/pppoe/PppoeNative;
.super Ljava/lang/Object;
.source "PppoeNative.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native startPppoe()Z
.end method

.method public static native stopPppoe()Z
.end method

.method public static native waitForPpoeEvent()I
.end method
