.class public Lcom/android/server/wm/Wms_Interface;
.super Ljava/lang/Object;
.source "Wms_Interface.java"


# static fields
.field public static WMS:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static destoryWindow(IIILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "winId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/shrinker/Shrinker;->destoryWindow(IIILjava/lang/String;)V

    .line 15
    return-void
.end method

.method public static hideWindow(IIILjava/lang/String;)V
    .locals 1
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "winId"    # I
    .param p3, "pkg"    # Ljava/lang/String;

    .prologue
    .line 12
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2, p3}, Lcom/android/server/shrinker/Shrinker;->hideWindow(IIILjava/lang/String;)V

    .line 11
    return-void
.end method

.method public static showWindow(IIILjava/lang/String;II)V
    .locals 7
    .param p0, "uid"    # I
    .param p1, "pid"    # I
    .param p2, "winId"    # I
    .param p3, "pkg"    # Ljava/lang/String;
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 8
    invoke-static {}, Lcom/android/server/shrinker/Shrinker;->getInstance()Lcom/android/server/shrinker/Shrinker;

    move-result-object v0

    move v1, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/shrinker/Shrinker;->showWindow(IIILjava/lang/String;II)V

    .line 7
    return-void
.end method
