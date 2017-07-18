.class final Lcom/android/internal/telephony/CarrierAppUtils$1;
.super Ljava/util/HashMap;
.source "CarrierAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/CarrierAppUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap",
        "<",
        "Ljava/lang/String;",
        "Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    .line 52
    const-string/jumbo v0, "405854"

    sget-object v1, Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;->TELEPHONY_CARRIER_ONE:Lcom/android/internal/telephony/CarrierAppUtils$CARRIER;

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/CarrierAppUtils$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    return-void
.end method
