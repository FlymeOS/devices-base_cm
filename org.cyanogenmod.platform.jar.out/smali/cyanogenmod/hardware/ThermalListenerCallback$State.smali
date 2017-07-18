.class public final Lcyanogenmod/hardware/ThermalListenerCallback$State;
.super Ljava/lang/Object;
.source "ThermalListenerCallback.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcyanogenmod/hardware/ThermalListenerCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# static fields
.field public static final STATE_COOL:I = 0x0

.field public static final STATE_CRITICAL:I = 0x3

.field public static final STATE_UNKNOWN:I = -0x1

.field public static final STATE_WARM_FALLING:I = 0x1

.field public static final STATE_WARM_RISING:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 1
    .param p0, "state"    # I

    .prologue
    .line 30
    packed-switch p0, :pswitch_data_0

    .line 40
    const-string/jumbo v0, "STATE_UNKNOWN"

    return-object v0

    .line 32
    :pswitch_0
    const-string/jumbo v0, "STATE_COOL"

    return-object v0

    .line 34
    :pswitch_1
    const-string/jumbo v0, "STATE_WARM_FALLING"

    return-object v0

    .line 36
    :pswitch_2
    const-string/jumbo v0, "STATE_WARM_RISING"

    return-object v0

    .line 38
    :pswitch_3
    const-string/jumbo v0, "STATE_CRITICAL"

    return-object v0

    .line 30
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
