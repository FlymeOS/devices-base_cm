.class public Landroid/content/res/flymetheme/FlymeLogUtil;
.super Ljava/lang/Object;
.source "FlymeLogUtil.java"


# static fields
.field public static final THEME_DEBUG:Z = false

.field public static final THEME_DEBUG_TAG:Ljava/lang/String; = "FlymeTheme-Liyd"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static d(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 15
    return-void
.end method

.method public static d(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 42
    if-eqz p1, :cond_0

    .line 43
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    return-void
.end method

.method public static e(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 21
    return-void
.end method

.method public static e(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 48
    if-eqz p1, :cond_0

    .line 49
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_0
    return-void
.end method

.method public static exception(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "tr"    # Ljava/lang/Throwable;

    .prologue
    .line 72
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    .line 74
    return-void
.end method

.method public static i(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 27
    return-void
.end method

.method public static i(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 54
    if-eqz p1, :cond_0

    .line 55
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    :cond_0
    return-void
.end method

.method public static v(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 33
    return-void
.end method

.method public static v(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 60
    if-eqz p1, :cond_0

    .line 61
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_0
    return-void
.end method

.method public static w(Ljava/lang/String;)V
    .locals 0
    .param p0, "message"    # Ljava/lang/String;

    .prologue
    .line 39
    return-void
.end method

.method public static w(Ljava/lang/String;Z)V
    .locals 1
    .param p0, "message"    # Ljava/lang/String;
    .param p1, "force"    # Z

    .prologue
    .line 66
    if-eqz p1, :cond_0

    .line 67
    const-string v0, "FlymeTheme-Liyd"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    :cond_0
    return-void
.end method
