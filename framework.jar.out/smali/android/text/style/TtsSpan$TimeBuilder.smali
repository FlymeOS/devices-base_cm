.class public Landroid/text/style/TtsSpan$TimeBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TimeBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$TimeBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1092
    const-string v0, "android.type.time"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1093
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "hours"    # I
    .param p2, "minutes"    # I

    .prologue
    .line 1100
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TimeBuilder;-><init>()V

    .line 1101
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1102
    invoke-virtual {p0, p2}, Landroid/text/style/TtsSpan$TimeBuilder;->setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;

    .line 1103
    return-void
.end method


# virtual methods
.method public setHours(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1
    .param p1, "hours"    # I

    .prologue
    .line 1112
    const-string v0, "android.arg.hours"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method

.method public setMinutes(I)Landroid/text/style/TtsSpan$TimeBuilder;
    .locals 1
    .param p1, "minutes"    # I

    .prologue
    .line 1123
    const-string v0, "android.arg.minutes"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TimeBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TimeBuilder;

    return-object v0
.end method
