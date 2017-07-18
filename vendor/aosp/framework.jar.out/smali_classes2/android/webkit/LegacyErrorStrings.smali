.class Landroid/webkit/LegacyErrorStrings;
.super Ljava/lang/Object;
.source "LegacyErrorStrings.java"


# static fields
.field private static final LOGTAG:Ljava/lang/String; = "Http"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getResource(I)I
    .locals 4
    .param p0, "errorCode"    # I

    .prologue
    const v3, 0x104015d

    .line 45
    packed-switch p0, :pswitch_data_0

    .line 95
    const-string/jumbo v0, "Http"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Using generic message for unknown error code: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    return v3

    .line 47
    :pswitch_0
    const v0, 0x104015c

    return v0

    .line 50
    :pswitch_1
    return v3

    .line 53
    :pswitch_2
    const v0, 0x104015e

    return v0

    .line 56
    :pswitch_3
    const v0, 0x104015f

    return v0

    .line 59
    :pswitch_4
    const v0, 0x1040160

    return v0

    .line 62
    :pswitch_5
    const v0, 0x1040161

    return v0

    .line 65
    :pswitch_6
    const v0, 0x1040162

    return v0

    .line 68
    :pswitch_7
    const v0, 0x1040163

    return v0

    .line 71
    :pswitch_8
    const v0, 0x1040164

    return v0

    .line 74
    :pswitch_9
    const v0, 0x1040165

    return v0

    .line 77
    :pswitch_a
    const v0, 0x1040008

    return v0

    .line 80
    :pswitch_b
    const v0, 0x1040166

    return v0

    .line 83
    :pswitch_c
    const v0, 0x1040007

    return v0

    .line 86
    :pswitch_d
    const v0, 0x1040167

    return v0

    .line 89
    :pswitch_e
    const v0, 0x1040168

    return v0

    .line 92
    :pswitch_f
    const v0, 0x1040169

    return v0

    .line 45
    :pswitch_data_0
    .packed-switch -0xf
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static getString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p0, "errorCode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-static {p0}, Landroid/webkit/LegacyErrorStrings;->getResource(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
