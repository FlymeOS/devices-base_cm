.class Lcom/android/server/MzVpnKeyStore$HashMapForRTI;
.super Ljava/util/HashMap;
.source "MzVpnKeyStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/MzVpnKeyStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HashMapForRTI"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/HashMap",
        "<TK;TV;>;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 49
    .local p0, "this":Lcom/android/server/MzVpnKeyStore$HashMapForRTI;, "Lcom/android/server/MzVpnKeyStore$HashMapForRTI<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/MzVpnKeyStore$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/server/MzVpnKeyStore$1;

    .prologue
    .line 49
    .local p0, "this":Lcom/android/server/MzVpnKeyStore$HashMapForRTI;, "Lcom/android/server/MzVpnKeyStore$HashMapForRTI<TK;TV;>;"
    invoke-direct {p0}, Lcom/android/server/MzVpnKeyStore$HashMapForRTI;-><init>()V

    return-void
.end method
