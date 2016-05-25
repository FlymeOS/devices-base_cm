.class public Landroid/text/style/TtsSpan$DateBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DateBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$DateBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 1137
    const-string v0, "android.type.date"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 1138
    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "weekday"    # Ljava/lang/Integer;
    .param p2, "day"    # Ljava/lang/Integer;
    .param p3, "month"    # Ljava/lang/Integer;
    .param p4, "year"    # Ljava/lang/Integer;

    .prologue
    .line 1150
    invoke-direct {p0}, Landroid/text/style/TtsSpan$DateBuilder;-><init>()V

    .line 1151
    if-eqz p1, :cond_0

    .line 1152
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1154
    :cond_0
    if-eqz p2, :cond_1

    .line 1155
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setDay(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1157
    :cond_1
    if-eqz p3, :cond_2

    .line 1158
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1160
    :cond_2
    if-eqz p4, :cond_3

    .line 1161
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/text/style/TtsSpan$DateBuilder;->setYear(I)Landroid/text/style/TtsSpan$DateBuilder;

    .line 1163
    :cond_3
    return-void
.end method


# virtual methods
.method public setDay(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "day"    # I

    .prologue
    .line 1183
    const-string v0, "android.arg.day"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setMonth(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "month"    # I

    .prologue
    .line 1193
    const-string v0, "android.arg.month"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setWeekday(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "weekday"    # I

    .prologue
    .line 1173
    const-string v0, "android.arg.weekday"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method

.method public setYear(I)Landroid/text/style/TtsSpan$DateBuilder;
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 1203
    const-string v0, "android.arg.year"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$DateBuilder;->setIntArgument(Ljava/lang/String;I)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$DateBuilder;

    return-object v0
.end method
