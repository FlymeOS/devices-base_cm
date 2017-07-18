.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SpellChecker.java"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MIN_SENTENCE_LENGTH:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final SUGGESTION_SPAN_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String;

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private final mSuggestionSpanCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Ljava/lang/Long;",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/SpellChecker;)[I
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/SpellChecker;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    return v0
.end method

.method static synthetic -get3(Landroid/widget/SpellChecker;)I
    .locals 1

    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    return v0
.end method

.method static synthetic -get4(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object v0
.end method

.method static synthetic -get5(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object v0
.end method

.method static synthetic -get6(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic -get7(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object v0
.end method

.method static synthetic -wrap0(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method static synthetic -wrap1(Landroid/widget/SpellChecker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 49
    const-class v0, Landroid/widget/SpellChecker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3
    .param p1, "textView"    # Landroid/widget/TextView;

    .prologue
    const/4 v2, 0x0

    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-array v1, v2, [Landroid/widget/SpellChecker$SpellParser;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 88
    iput v2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 102
    new-instance v1, Landroid/util/LruCache;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Landroid/util/LruCache;-><init>(I)V

    .line 101
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 105
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 108
    const/4 v0, 0x1

    .line 109
    .local v0, "size":I
    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 110
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 112
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v1

    invoke-direct {p0, v1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 114
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->hashCode()I

    move-result v1

    iput v1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 104
    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 5
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "start"    # I
    .param p3, "end"    # I

    .prologue
    .line 195
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 196
    .local v0, "index":I
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v2, v0

    .line 197
    .local v1, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/16 v2, 0x21

    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 198
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 199
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput v3, v2, v0

    .line 194
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 14
    .param p1, "editable"    # Landroid/text/Editable;
    .param p2, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p3, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;
    .param p4, "offset"    # I
    .param p5, "length"    # I

    .prologue
    .line 455
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v6

    .line 456
    .local v6, "spellCheckSpanStart":I
    move-object/from16 v0, p3

    invoke-interface {p1, v0}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    .line 457
    .local v5, "spellCheckSpanEnd":I
    if-ltz v6, :cond_0

    if-gt v5, v6, :cond_1

    .line 458
    :cond_0
    return-void

    .line 462
    :cond_1
    const/4 v12, -0x1

    move/from16 v0, p4

    if-eq v0, v12, :cond_2

    const/4 v12, -0x1

    move/from16 v0, p5

    if-eq v0, v12, :cond_2

    .line 463
    add-int v7, v6, p4

    .line 464
    .local v7, "start":I
    add-int v2, v7, p5

    .line 470
    .local v2, "end":I
    :goto_0
    invoke-virtual/range {p2 .. p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result v10

    .line 472
    .local v10, "suggestionsCount":I
    if-lez v10, :cond_3

    .line 473
    new-array v9, v10, [Ljava/lang/String;

    .line 474
    .local v9, "suggestions":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v10, :cond_4

    .line 475
    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v12

    aput-object v12, v9, v3

    .line 474
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 466
    .end local v2    # "end":I
    .end local v3    # "i":I
    .end local v7    # "start":I
    .end local v9    # "suggestions":[Ljava/lang/String;
    .end local v10    # "suggestionsCount":I
    :cond_2
    move v7, v6

    .line 467
    .restart local v7    # "start":I
    move v2, v5

    .restart local v2    # "end":I
    goto :goto_0

    .line 478
    .restart local v10    # "suggestionsCount":I
    :cond_3
    const-class v12, Ljava/lang/String;

    invoke-static {v12}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Ljava/lang/String;

    .line 481
    .restart local v9    # "suggestions":[Ljava/lang/String;
    :cond_4
    new-instance v8, Landroid/text/style/SuggestionSpan;

    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    .line 482
    const/4 v13, 0x3

    .line 481
    invoke-direct {v8, v12, v9, v13}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 485
    .local v8, "suggestionSpan":Landroid/text/style/SuggestionSpan;
    iget-boolean v12, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v12, :cond_6

    .line 486
    invoke-static {v7, v2}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    .line 487
    .local v4, "key":Ljava/lang/Long;
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v12, v4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/text/style/SuggestionSpan;

    .line 488
    .local v11, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v11, :cond_5

    .line 493
    invoke-interface {p1, v11}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 495
    :cond_5
    iget-object v12, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v12, v4, v8}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 497
    .end local v4    # "key":Ljava/lang/Long;
    .end local v11    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    const/16 v12, 0x21

    invoke-interface {p1, v8, v7, v2, v12}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 499
    iget-object v12, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v13, 0x0

    invoke-virtual {v12, v7, v2, v13}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 454
    return-void
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 3
    .param p0, "editable"    # Landroid/text/Editable;
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "spanStart"    # I
    .param p4, "spanEnd"    # I

    .prologue
    .line 756
    if-eq p4, p1, :cond_0

    if-eq p3, p2, :cond_0

    .line 757
    const/4 v1, 0x1

    .line 785
    :goto_0
    return v1

    .line 761
    :cond_0
    if-ne p4, p1, :cond_1

    invoke-interface {p0}, Landroid/text/Editable;->length()I

    move-result v2

    if-ge p1, v2, :cond_1

    .line 762
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 763
    .local v0, "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .local v1, "haveWordBoundariesChanged":Z
    goto :goto_0

    .line 770
    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_1
    if-ne p3, p2, :cond_2

    if-lez p2, :cond_2

    .line 771
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 772
    .restart local v0    # "codePoint":I
    invoke-static {v0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v1

    .restart local v1    # "haveWordBoundariesChanged":Z
    goto :goto_0

    .line 783
    .end local v0    # "codePoint":I
    .end local v1    # "haveWordBoundariesChanged":Z
    :cond_2
    const/4 v1, 0x0

    .local v1, "haveWordBoundariesChanged":Z
    goto :goto_0
.end method

.method private isSessionActive()Z
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    .line 184
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v1, v1, v0

    if-gez v1, :cond_0

    return v0

    .line 183
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 187
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 189
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v3, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v3}, Landroid/text/style/SpellCheckSpan;-><init>()V

    .line 188
    invoke-static {v1, v2, v3}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/SpellCheckSpan;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 190
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 191
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v1, v1, -0x1

    return v1
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 19
    .param p1, "suggestionsInfo"    # Landroid/view/textservice/SuggestionsInfo;
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .prologue
    .line 325
    if-eqz p1, :cond_0

    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v2

    move-object/from16 v0, p0

    iget v4, v0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v2, v4, :cond_1

    .line 326
    :cond_0
    const/4 v2, 0x0

    return-object v2

    .line 328
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Landroid/text/Editable;

    .line 329
    .local v3, "editable":Landroid/text/Editable;
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v14

    .line 330
    .local v14, "sequenceNumber":I
    const/4 v11, 0x0

    .local v11, "k":I
    :goto_0
    move-object/from16 v0, p0

    iget v2, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v11, v2, :cond_8

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v11

    if-ne v14, v2, :cond_7

    .line 332
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v8

    .line 334
    .local v8, "attributes":I
    and-int/lit8 v2, v8, 0x1

    if-lez v2, :cond_3

    const/4 v10, 0x1

    .line 336
    .local v10, "isInDictionary":Z
    :goto_1
    and-int/lit8 v2, v8, 0x2

    if-lez v2, :cond_4

    const/4 v13, 0x1

    .line 338
    .local v13, "looksLikeTypo":Z
    :goto_2
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v5, v2, v11

    .line 341
    .local v5, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-nez v10, :cond_5

    if-eqz v13, :cond_5

    move-object/from16 v2, p0

    move-object/from16 v4, p1

    move/from16 v6, p2

    move/from16 v7, p3

    .line 342
    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    .line 375
    :cond_2
    :goto_3
    return-object v5

    .line 334
    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v10    # "isInDictionary":Z
    .end local v13    # "looksLikeTypo":Z
    :cond_3
    const/4 v10, 0x0

    .restart local v10    # "isInDictionary":Z
    goto :goto_1

    .line 336
    :cond_4
    const/4 v13, 0x0

    .restart local v13    # "looksLikeTypo":Z
    goto :goto_2

    .line 346
    .restart local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_5
    move-object/from16 v0, p0

    iget-boolean v2, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v2, :cond_2

    .line 349
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v16

    .line 350
    .local v16, "spellCheckSpanStart":I
    invoke-interface {v3, v5}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v15

    .line 353
    .local v15, "spellCheckSpanEnd":I
    const/4 v2, -0x1

    move/from16 v0, p2

    if-eq v0, v2, :cond_6

    const/4 v2, -0x1

    move/from16 v0, p3

    if-eq v0, v2, :cond_6

    .line 354
    add-int v17, v16, p2

    .line 355
    .local v17, "start":I
    add-int v9, v17, p3

    .line 360
    .local v9, "end":I
    :goto_4
    if-ltz v16, :cond_2

    move/from16 v0, v16

    if-le v15, v0, :cond_2

    .line 361
    move/from16 v0, v17

    if-le v9, v0, :cond_2

    .line 362
    move/from16 v0, v17

    invoke-static {v0, v9}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    .line 363
    .local v12, "key":Ljava/lang/Long;
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v2, v12}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/text/style/SuggestionSpan;

    .line 364
    .local v18, "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    if-eqz v18, :cond_2

    .line 369
    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 370
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v2, v12}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 357
    .end local v9    # "end":I
    .end local v12    # "key":Ljava/lang/Long;
    .end local v17    # "start":I
    .end local v18    # "tempSuggestionSpan":Landroid/text/style/SuggestionSpan;
    :cond_6
    move/from16 v17, v16

    .line 358
    .restart local v17    # "start":I
    move v9, v15

    .restart local v9    # "end":I
    goto :goto_4

    .line 330
    .end local v5    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "attributes":I
    .end local v9    # "end":I
    .end local v10    # "isInDictionary":Z
    .end local v13    # "looksLikeTypo":Z
    .end local v15    # "spellCheckSpanEnd":I
    .end local v16    # "spellCheckSpanStart":I
    .end local v17    # "start":I
    :cond_7
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    .line 378
    :cond_8
    const/4 v2, 0x0

    return-object v2
.end method

.method private resetSession()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 118
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 120
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    const-string/jumbo v2, "textservices"

    .line 120
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/textservice/TextServicesManager;

    iput-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 122
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    iget-object v1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-nez v1, :cond_1

    .line 125
    :cond_0
    iput-object v3, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 135
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_2

    .line 136
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 135
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 124
    .end local v0    # "i":I
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v5}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 127
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 129
    iget-object v2, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 127
    invoke-virtual {v1, v3, v2, p0, v4}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 131
    iput-boolean v5, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    goto :goto_0

    .line 138
    .restart local v0    # "i":I
    :cond_2
    iput v4, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 141
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 142
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1}, Landroid/util/LruCache;->evictAll()V

    .line 117
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .prologue
    .line 432
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 433
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 450
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/TextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 428
    return-void

    .line 447
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 146
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 148
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 150
    if-eqz p1, :cond_0

    .line 152
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 156
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 145
    return-void
.end method

.method private spellCheck()V
    .locals 18

    .prologue
    .line 261
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v5, :cond_0

    return-void

    .line 263
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    check-cast v2, Landroid/text/Editable;

    .line 264
    .local v2, "editable":Landroid/text/Editable;
    invoke-static {v2}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v11

    .line 265
    .local v11, "selectionStart":I
    invoke-static {v2}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v10

    .line 267
    .local v10, "selectionEnd":I
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/SpellChecker;->mLength:I

    new-array v13, v5, [Landroid/view/textservice/TextInfo;

    .line 268
    .local v13, "textInfos":[Landroid/view/textservice/TextInfo;
    const/4 v15, 0x0

    .line 270
    .local v15, "textInfosCount":I
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v8, v5, :cond_9

    .line 271
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v12, v5, v8

    .line 272
    .local v12, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v5, v5, v8

    if-ltz v5, :cond_1

    invoke-virtual {v12}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 270
    :cond_1
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 274
    :cond_2
    invoke-interface {v2, v12}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 275
    .local v3, "start":I
    invoke-interface {v2, v12}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    .line 284
    .local v4, "end":I
    add-int/lit8 v5, v4, 0x1

    if-ne v11, v5, :cond_4

    invoke-interface {v2, v4}, Landroid/text/Editable;->charAt(I)C

    move-result v5

    const/16 v6, 0x27

    if-ne v5, v6, :cond_4

    const/4 v7, 0x1

    .line 285
    .local v7, "apostrophe":Z
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v5, :cond_6

    .line 289
    if-nez v7, :cond_5

    if-le v10, v3, :cond_3

    if-le v11, v4, :cond_5

    :cond_3
    const/4 v9, 0x1

    .line 293
    .local v9, "isEditing":Z
    :goto_3
    if-ltz v3, :cond_1

    if-le v4, v3, :cond_1

    if-eqz v9, :cond_1

    .line 294
    const/4 v5, 0x1

    invoke-virtual {v12, v5}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 295
    new-instance v1, Landroid/view/textservice/TextInfo;

    move-object/from16 v0, p0

    iget v5, v0, Landroid/widget/SpellChecker;->mCookie:I

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/SpellChecker;->mIds:[I

    aget v6, v6, v8

    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 296
    .local v1, "textInfo":Landroid/view/textservice/TextInfo;
    add-int/lit8 v16, v15, 0x1

    .end local v15    # "textInfosCount":I
    .local v16, "textInfosCount":I
    aput-object v1, v13, v15

    move/from16 v15, v16

    .end local v16    # "textInfosCount":I
    .restart local v15    # "textInfosCount":I
    goto :goto_1

    .line 284
    .end local v1    # "textInfo":Landroid/view/textservice/TextInfo;
    .end local v7    # "apostrophe":Z
    .end local v9    # "isEditing":Z
    :cond_4
    const/4 v7, 0x0

    .restart local v7    # "apostrophe":Z
    goto :goto_2

    .line 289
    :cond_5
    const/4 v9, 0x0

    .restart local v9    # "isEditing":Z
    goto :goto_3

    .line 291
    .end local v9    # "isEditing":Z
    :cond_6
    if-nez v7, :cond_8

    if-lt v10, v3, :cond_7

    if-le v11, v4, :cond_8

    :cond_7
    const/4 v9, 0x1

    .restart local v9    # "isEditing":Z
    goto :goto_3

    .end local v9    # "isEditing":Z
    :cond_8
    const/4 v9, 0x0

    .restart local v9    # "isEditing":Z
    goto :goto_3

    .line 306
    .end local v3    # "start":I
    .end local v4    # "end":I
    .end local v7    # "apostrophe":Z
    .end local v9    # "isEditing":Z
    .end local v12    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_9
    if-lez v15, :cond_b

    .line 307
    array-length v5, v13

    if-ge v15, v5, :cond_a

    .line 308
    new-array v14, v15, [Landroid/view/textservice/TextInfo;

    .line 309
    .local v14, "textInfosCopy":[Landroid/view/textservice/TextInfo;
    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v13, v5, v14, v6, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 310
    move-object v13, v14

    .line 313
    .end local v14    # "textInfosCopy":[Landroid/view/textservice/TextInfo;
    :cond_a
    move-object/from16 v0, p0

    iget-boolean v5, v0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v5, :cond_c

    .line 314
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 315
    const/4 v6, 0x5

    .line 314
    invoke-virtual {v5, v13, v6}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    .line 260
    :cond_b
    :goto_4
    return-void

    .line 317
    :cond_c
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    const/4 v6, 0x5

    .line 318
    const/16 v17, 0x0

    .line 317
    move/from16 v0, v17

    invoke-virtual {v5, v13, v6, v0}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    goto :goto_4
.end method


# virtual methods
.method public closeSession()V
    .locals 4

    .prologue
    .line 168
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v2, :cond_0

    .line 169
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v2}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 172
    :cond_0
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v1, v2

    .line 173
    .local v1, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 174
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 173
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 177
    :cond_1
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v2, :cond_2

    .line 178
    iget-object v2, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 167
    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 10
    .param p1, "results"    # [Landroid/view/textservice/SentenceSuggestionsInfo;

    .prologue
    .line 397
    iget-object v9, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 399
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v9, p1

    if-ge v1, v9, :cond_5

    .line 400
    aget-object v7, p1, v1

    .line 401
    .local v7, "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    if-nez v7, :cond_1

    .line 399
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 404
    :cond_1
    const/4 v6, 0x0

    .line 405
    .local v6, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    const/4 v2, 0x0

    .end local v6    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .local v2, "j":I
    :goto_2
    invoke-virtual {v7}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v9

    if-ge v2, v9, :cond_4

    .line 406
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v8

    .line 407
    .local v8, "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    if-nez v8, :cond_3

    .line 405
    :cond_2
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 410
    :cond_3
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v4

    .line 411
    .local v4, "offset":I
    invoke-virtual {v7, v2}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v3

    .line 412
    .local v3, "length":I
    invoke-direct {p0, v8, v4, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v5

    .line 414
    .local v5, "scs":Landroid/text/style/SpellCheckSpan;
    if-nez v6, :cond_2

    if-eqz v5, :cond_2

    .line 417
    move-object v6, v5

    .local v6, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    goto :goto_3

    .line 420
    .end local v3    # "length":I
    .end local v4    # "offset":I
    .end local v5    # "scs":Landroid/text/style/SpellCheckSpan;
    .end local v6    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    .end local v8    # "suggestionsInfo":Landroid/view/textservice/SuggestionsInfo;
    :cond_4
    if-eqz v6, :cond_0

    .line 422
    invoke-interface {v0, v6}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    .line 425
    .end local v2    # "j":I
    .end local v7    # "ssi":Landroid/view/textservice/SentenceSuggestionsInfo;
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 396
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 5
    .param p1, "results"    # [Landroid/view/textservice/SuggestionsInfo;

    .prologue
    const/4 v4, -0x1

    .line 383
    iget-object v3, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 384
    .local v0, "editable":Landroid/text/Editable;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_1

    .line 386
    aget-object v3, p1, v1

    invoke-direct {p0, v3, v4, v4}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    .line 387
    .local v2, "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    if-eqz v2, :cond_0

    .line 389
    invoke-interface {v0, v2}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 384
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 392
    .end local v2    # "spellCheckSpan":Landroid/text/style/SpellCheckSpan;
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 382
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    .prologue
    .line 213
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    .line 212
    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 3
    .param p1, "spellCheckSpan"    # Landroid/text/style/SpellCheckSpan;

    .prologue
    .line 204
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    .line 205
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 206
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v2, -0x1

    aput v2, v1, v0

    .line 207
    return-void

    .line 204
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 202
    :cond_1
    return-void
.end method

.method public spellCheck(II)V
    .locals 10
    .param p1, "start"    # I
    .param p2, "end"    # I

    .prologue
    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 220
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v3

    .line 221
    .local v3, "locale":Ljava/util/Locale;
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    .line 222
    .local v1, "isSessionActive":Z
    if-eqz v3, :cond_0

    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-nez v7, :cond_2

    .line 223
    :cond_0
    invoke-direct {p0, v3}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 225
    const/4 p1, 0x0

    .line 226
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v7}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    move-result p2

    .line 235
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    return-void

    .line 222
    :cond_2
    iget-object v7, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v7, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 228
    iget-object v7, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v7}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v5

    .line 229
    .local v5, "spellCheckerActivated":Z
    if-eq v1, v5, :cond_1

    .line 231
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_0

    .line 238
    .end local v5    # "spellCheckerActivated":Z
    :cond_3
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v2, v7

    .line 239
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v2, :cond_5

    .line 240
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v6, v7, v0

    .line 241
    .local v6, "spellParser":Landroid/widget/SpellChecker$SpellParser;
    invoke-virtual {v6}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 242
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    .line 243
    return-void

    .line 239
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 251
    .end local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    :cond_5
    add-int/lit8 v7, v2, 0x1

    new-array v4, v7, [Landroid/widget/SpellChecker$SpellParser;

    .line 252
    .local v4, "newSpellParsers":[Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v7, v9, v4, v9, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 253
    iput-object v4, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 255
    new-instance v6, Landroid/widget/SpellChecker$SpellParser;

    invoke-direct {v6, p0, v8}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$SpellParser;)V

    .line 256
    .restart local v6    # "spellParser":Landroid/widget/SpellChecker$SpellParser;
    iget-object v7, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v6, v7, v2

    .line 257
    invoke-virtual {v6, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    .line 216
    return-void
.end method
