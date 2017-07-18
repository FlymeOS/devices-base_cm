.class Landroid/text/TextDirectionHeuristics$FirstStrong;
.super Ljava/lang/Object;
.source "TextDirectionHeuristics.java"

# interfaces
.implements Landroid/text/TextDirectionHeuristics$TextDirectionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/TextDirectionHeuristics;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FirstStrong"
.end annotation


# static fields
.field public static final INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 229
    new-instance v0, Landroid/text/TextDirectionHeuristics$FirstStrong;

    invoke-direct {v0}, Landroid/text/TextDirectionHeuristics$FirstStrong;-><init>()V

    sput-object v0, Landroid/text/TextDirectionHeuristics$FirstStrong;->INSTANCE:Landroid/text/TextDirectionHeuristics$FirstStrong;

    .line 205
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public checkRtl(Ljava/lang/CharSequence;II)I
    .locals 6
    .param p1, "cs"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I

    .prologue
    .line 208
    const/4 v4, 0x2

    .line 209
    .local v4, "result":I
    const/4 v3, 0x0

    .line 210
    .local v3, "openIsolateCount":I
    move v2, p2

    .local v2, "i":I
    add-int v1, p2, p3

    .line 211
    .local v1, "end":I
    :goto_0
    if-ge v2, v1, :cond_3

    const/4 v5, 0x2

    if-ne v4, v5, :cond_3

    .line 213
    invoke-static {p1, v2}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result v0

    .line 214
    .local v0, "cp":I
    const/16 v5, 0x2066

    if-gt v5, v0, :cond_1

    const/16 v5, 0x2068

    if-gt v0, v5, :cond_1

    .line 215
    add-int/lit8 v3, v3, 0x1

    .line 212
    :cond_0
    :goto_1
    invoke-static {v0}, Ljava/lang/Character;->charCount(I)I

    move-result v5

    add-int/2addr v2, v5

    goto :goto_0

    .line 216
    :cond_1
    const/16 v5, 0x2069

    if-ne v0, v5, :cond_2

    .line 217
    if-lez v3, :cond_0

    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 218
    :cond_2
    if-nez v3, :cond_0

    .line 220
    invoke-static {v0}, Landroid/text/TextDirectionHeuristics;->-wrap0(I)I

    move-result v4

    goto :goto_1

    .line 223
    .end local v0    # "cp":I
    :cond_3
    return v4
.end method
