.class public Landroid/text/style/TtsSpan$TextBuilder;
.super Landroid/text/style/TtsSpan$SemioticClassBuilder;
.source "TtsSpan.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/text/style/TtsSpan;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/text/style/TtsSpan$SemioticClassBuilder",
        "<",
        "Landroid/text/style/TtsSpan$TextBuilder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 649
    const-string/jumbo v0, "android.type.text"

    invoke-direct {p0, v0}, Landroid/text/style/TtsSpan$SemioticClassBuilder;-><init>(Ljava/lang/String;)V

    .line 648
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 659
    invoke-direct {p0}, Landroid/text/style/TtsSpan$TextBuilder;-><init>()V

    .line 660
    invoke-virtual {p0, p1}, Landroid/text/style/TtsSpan$TextBuilder;->setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;

    .line 658
    return-void
.end method


# virtual methods
.method public setText(Ljava/lang/String;)Landroid/text/style/TtsSpan$TextBuilder;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 669
    const-string/jumbo v0, "android.arg.text"

    invoke-virtual {p0, v0, p1}, Landroid/text/style/TtsSpan$TextBuilder;->setStringArgument(Ljava/lang/String;Ljava/lang/String;)Landroid/text/style/TtsSpan$Builder;

    move-result-object v0

    check-cast v0, Landroid/text/style/TtsSpan$TextBuilder;

    return-object v0
.end method
