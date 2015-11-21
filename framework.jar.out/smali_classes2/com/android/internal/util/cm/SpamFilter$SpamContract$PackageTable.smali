.class public final Lcom/android/internal/util/cm/SpamFilter$SpamContract$PackageTable;
.super Ljava/lang/Object;
.source "SpamFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/SpamFilter$SpamContract;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PackageTable"
.end annotation


# static fields
.field public static final ID:Ljava/lang/String; = "_id"

.field public static final PACKAGE_NAME:Ljava/lang/String; = "package_name"

.field public static final TABLE_NAME:Ljava/lang/String; = "packages"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
