.class public Landroid/provider/ThemesContract$ThemesColumns$InstallState;
.super Ljava/lang/Object;
.source "ThemesContract.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ThemesContract$ThemesColumns;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InstallState"
.end annotation


# static fields
.field public static final INSTALLED:I = 0x3

.field public static final INSTALLING:I = 0x1

.field public static final UNKNOWN:I = 0x0

.field public static final UPDATING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
