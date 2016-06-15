.class public final Landroid/app/LoadedApk$FlymeInjector;
.super Ljava/lang/Object;
.source "LoadedApk.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/LoadedApk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "FlymeInjector"
.end annotation


# static fields
.field private static final FLYME_INTERNAL_PACKAGE:Ljava/lang/String; = "com.flyme.internal"

.field private static final FLYME_PACKAGE:Ljava/lang/String; = "flyme"

.field private static flymePackageId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 1256
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFlymePackageId()I
    .locals 1

    .prologue
    .line 1272
    sget v0, Landroid/app/LoadedApk$FlymeInjector;->flymePackageId:I

    return v0
.end method

.method static rewriteRValues(Landroid/app/LoadedApk;Ljava/lang/ClassLoader;Ljava/lang/String;I)V
    .locals 1
    .param p0, "loadedApk"    # Landroid/app/LoadedApk;
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "packageName"    # Ljava/lang/String;
    .param p3, "id"    # I

    .prologue
    .line 1264
    invoke-virtual {p0, p1, p2, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1265
    const-string v0, "flyme"

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1266
    sput p3, Landroid/app/LoadedApk$FlymeInjector;->flymePackageId:I

    .line 1267
    const-string v0, "com.flyme.internal"

    invoke-virtual {p0, p1, v0, p3}, Landroid/app/LoadedApk;->flymeInvokeMethodRewriteRValues(Ljava/lang/ClassLoader;Ljava/lang/String;I)V

    .line 1269
    :cond_0
    return-void
.end method
