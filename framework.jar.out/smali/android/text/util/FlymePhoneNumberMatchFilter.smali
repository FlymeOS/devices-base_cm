.class final Landroid/text/util/FlymePhoneNumberMatchFilter;
.super Ljava/lang/Object;
.source "Linkify.java"

# interfaces
.implements Landroid/text/util/Linkify$MatchFilter;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 644
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final acceptMatch(Ljava/lang/CharSequence;II)Z
    .locals 12
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    const v11, 0xffe5

    const/16 v10, 0x2e

    const/16 v9, 0x24

    const/4 v8, 0x0

    .line 647
    add-int/lit8 v3, p3, 0x1

    .line 648
    .local v3, "next":I
    :try_start_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-ge v3, v6, :cond_0

    invoke-interface {p1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_0

    invoke-interface {p1, v3}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 649
    return v8

    .line 652
    :cond_0
    add-int/lit8 v4, p2, -0x1

    .line 653
    .local v4, "pre1":I
    if-ltz v4, :cond_5

    .line 654
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x20

    if-ne v7, v6, :cond_2

    .line 655
    add-int/lit8 v5, v4, -0x1

    .line 656
    .local v5, "pre2":I
    if-ltz v5, :cond_5

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v9, v6, :cond_1

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v11, v6, :cond_5

    .line 657
    :cond_1
    return v8

    .line 659
    .end local v5    # "pre2":I
    :cond_2
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-eq v9, v6, :cond_3

    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v11, v6, :cond_4

    .line 660
    :cond_3
    return v8

    .line 661
    :cond_4
    invoke-interface {p1, v4}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    if-ne v10, v6, :cond_5

    .line 662
    add-int/lit8 v5, v4, -0x1

    .line 663
    .restart local v5    # "pre2":I
    if-ltz v5, :cond_5

    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v6

    if-eqz v6, :cond_5

    .line 664
    return v8

    .line 668
    .end local v4    # "pre1":I
    .end local v5    # "pre2":I
    :catch_0
    move-exception v1

    .line 671
    :cond_5
    const/4 v0, 0x0

    .line 673
    .local v0, "digitCount":I
    move v2, p2

    .local v2, "i":I
    :goto_0
    if-ge v2, p3, :cond_7

    .line 674
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    invoke-static {v6}, Ljava/lang/Character;->isDigit(C)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 675
    add-int/lit8 v0, v0, 0x1

    .line 676
    invoke-static {}, Landroid/text/util/Linkify;->getPhoneNumberMinimumDigits()I

    move-result v6

    if-lt v0, v6, :cond_6

    .line 677
    const/4 v6, 0x1

    return v6

    .line 673
    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 681
    :cond_7
    return v8
.end method
