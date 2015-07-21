.class public Landroid/hardware/fingerprint/Fingerprint$Builder;
.super Ljava/lang/Object;
.source "Fingerprint.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/hardware/fingerprint/Fingerprint;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mId:Ljava/lang/Integer;

.field private mName:Ljava/lang/String;

.field private mUserId:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/fingerprint/Fingerprint;)V
    .locals 1
    .param p1, "fp"    # Landroid/hardware/fingerprint/Fingerprint;

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mName:Ljava/lang/String;

    .line 105
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getFingerId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mId:Ljava/lang/Integer;

    .line 106
    invoke-virtual {p1}, Landroid/hardware/fingerprint/Fingerprint;->getUserId()Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mUserId:Ljava/lang/Integer;

    .line 107
    return-void
.end method


# virtual methods
.method public build()Landroid/hardware/fingerprint/Fingerprint;
    .locals 4

    .prologue
    .line 120
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    iget-object v1, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mName:Ljava/lang/String;

    iget-object v2, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mId:Ljava/lang/Integer;

    iget-object v3, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mUserId:Ljava/lang/Integer;

    invoke-direct {v0, v1, v2, v3}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V

    return-object v0
.end method

.method public id(I)Landroid/hardware/fingerprint/Fingerprint$Builder;
    .locals 1
    .param p1, "id"    # I

    .prologue
    .line 115
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mId:Ljava/lang/Integer;

    .line 116
    return-object p0
.end method

.method public name(Ljava/lang/String;)Landroid/hardware/fingerprint/Fingerprint$Builder;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 110
    iput-object p1, p0, Landroid/hardware/fingerprint/Fingerprint$Builder;->mName:Ljava/lang/String;

    .line 111
    return-object p0
.end method
