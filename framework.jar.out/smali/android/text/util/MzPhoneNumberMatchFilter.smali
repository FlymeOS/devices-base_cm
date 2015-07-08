.class Landroid/text/util/MzPhoneNumberMatchFilter;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 668
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 11
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v10, 0xffe5

    const/16 v9, 0x2e

    const/16 v8, 0x24

    const/4 v5, 0x0

    .line 672
    add-int/lit8 v2, p3, 0x1

    .line 673
    .local v2, "next":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v2, v6, :cond_1

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_1

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 706
    :cond_0
    :goto_0
    return v5

    .line 677
    :cond_1
    add-int/lit8 v3, p2, -0x1

    .line 678
    .local v3, "pre1":I
    if-ltz v3, :cond_2

    .line 679
    const/16 v6, 0x20

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v6, v7, :cond_3

    .line 680
    add-int/lit8 v4, v3, -0x1

    .line 681
    .local v4, "pre2":I
    if-ltz v4, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v8, v6, :cond_0

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eq v10, v6, :cond_0

    .line 696
    .end local v3    # "pre1":I
    .end local v4    # "pre2":I
    :cond_2
    :goto_1
    const/4 v0, 0x0

    .line 698
    .local v0, "digitCount":I
    move v1, p2

    .local v1, "i":I
    :goto_2
    if-ge v1, p3, :cond_0

    .line 699
    invoke-interface {p1, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 700
    add-int/lit8 v0, v0, 0x1

    .line 701
    invoke-static {}, Landroid/text/util/Linkify;->getPhoneNumberMinimumDigits()I

    move-result v6

    if-lt v0, v6, :cond_4

    .line 702
    const/4 v5, 0x1

    goto :goto_0

    .line 684
    .end local v0    # "digitCount":I
    .end local v1    # "i":I
    .restart local v3    # "pre1":I
    :cond_3
    :try_start_1
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v8, v6, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v10, v6, :cond_0

    .line 686
    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v9, v6, :cond_2

    .line 687
    add-int/lit8 v4, v3, -0x1

    .line 688
    .restart local v4    # "pre2":I
    if-ltz v4, :cond_2

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_0

    .line 698
    .end local v3    # "pre1":I
    .end local v4    # "pre2":I
    .restart local v0    # "digitCount":I
    .restart local v1    # "i":I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 693
    .end local v0    # "digitCount":I
    .end local v1    # "i":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method
