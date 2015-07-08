.class Lcom/android/server/MzVpnKeyStore$Element;
.super Ljava/lang/Object;
.source "MzVpnKeyStore.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MzVpnKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Element"
.end annotation


# instance fields
.field data:[B

.field version:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .prologue
    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/server/MzVpnKeyStore$Element;->version:I

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MzVpnKeyStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MzVpnKeyStore$1;

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore$Element;-><init>()V

    return-void
.end method
