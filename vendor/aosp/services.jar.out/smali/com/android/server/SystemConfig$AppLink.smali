.class public Lcom/android/server/SystemConfig$AppLink;
.super Ljava/lang/Object;
.source "SystemConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SystemConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppLink"
.end annotation


# instance fields
.field public pkgname:Ljava/lang/String;

.field public state:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 535
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "other"    # Ljava/lang/Object;

    .prologue
    .line 544
    instance-of v0, p1, Lcom/android/server/SystemConfig$AppLink;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/server/SystemConfig$AppLink;->pkgname:Ljava/lang/String;

    check-cast p1, Lcom/android/server/SystemConfig$AppLink;

    .end local p1    # "other":Ljava/lang/Object;
    iget-object v1, p1, Lcom/android/server/SystemConfig$AppLink;->pkgname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/server/SystemConfig$AppLink;->pkgname:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method
