.class public Landroid/text/style/EmojiStyleSpan;
.super Landroid/text/style/CharacterStyle;
.source "EmojiStyleSpan.java"

# interfaces
.implements Landroid/text/style/UpdateAppearance;


# static fields
.field public static final EMOJI_PATTERN:Ljava/lang/String; = "[\u263a\ud83d\ude01\ud83d\ude04\ud83d\ude07\ud83d\ude2f\ud83d\ude15\ud83d\ude20\ud83d\ude10\ud83d\ude08\ud83d\ude05\ud83d\ude02\ud83d\ude0a\ud83d\ude00\ud83d\ude03\ud83d\ude06\ud83d\ude09\ud83d\ude11\ud83d\ude21\ud83d\ude22\ud83d\ude23\ud83d\ude26\ud83d\ude29\ud83d\ude31\ud83d\ude35\ud83d\ude34\ud83d\ude24\ud83d\ude27\ud83d\ude30\ud83d\ude32\ud83d\ude36\ud83d\ude2e\ud83d\ude25\ud83d\ude28\ud83d\ude1f\ud83d\ude33\ud83d\ude37\ud83d\ude1e\ud83d\ude1b\ud83d\ude0b\ud83d\ude18\ud83d\ude2d\ud83d\ude14\ud83d\ude12\ud83d\ude1c\ud83d\ude17\ud83d\ude1a\ud83d\ude0c\ud83d\ude0d\ud83d\ude1d\ud83d\ude19\ud83d\ude0e\ud83d\ude16\ud83d\ude0f\ud83d\ude2a\ud83d\ude13\ud83d\ude4c\ud83d\ude46\ud83d\ude4f\ud83d\ude38\ud83d\ude3d\ud83d\ude2b\ud83d\ude4d\ud83d\ude47\ud83d\ude3a\ud83d\ude39\ud83d\ude3f\ud83d\ude4b\ud83d\ude45\ud83d\ude4e\ud83d\ude3c\ud83d\ude3b\ud83d\ude3e\ud83d\ude40\ud83d\ude4a\ud83d\udc66\ud83d\udc69\ud83d\udc8f\ud83d\udc6b\ud83d\ude48\ud83d\udca9\ud83d\udc67\ud83d\udc74\ud83d\udc91\ud83d\udc6c\ud83d\ude49\ud83d\udc76\ud83d\udc68\ud83d\udc75\ud83d\udc6a\ud83d\udc6d\ud83d\udc64\ud83d\udc65\ud83d\udc6e\ud83d\udc77\ud83d\udc81\ud83d\udc82\ud83d\udc6f\ud83d\udc70\ud83d\udc78\ud83c\udf85\ud83d\udc7c\ud83d\udc71\ud83d\udc72\ud83d\udc73\ud83d\udc83\ud83d\udc86\ud83d\udc87\ud83d\udc85\ud83d\udc7b\ud83d\udc7d\ud83d\udc80\ud83d\udc42\ud83d\udc44\ud83d\udc79\ud83d\udc7e\ud83d\udcaa\ud83d\udc43\ud83d\udc45\ud83d\udc99\ud83d\udc7a\ud83d\udc7f\ud83d\udc40\ud83d\udc63\ud83d\udc8b\ud83d\udc9a\ud83d\udc9b\ud83d\udc94\ud83d\udc97\ud83d\udc9e\ud83d\udc9c\ud83d\udc95\ud83d\udc98\ud83d\udc9f\ud83d\udc93\ud83d\udc96\ud83d\udc9d\ud83d\udc4d\u270a\ud83d\udc4c\ud83d\udc4e\u270c\u270b\ud83d\udc4a\u261d\ud83d\udc46\ud83d\udc47\ud83d\udc4b\ud83d\udc49\ud83d\udc48\ud83d\udc4f\ud83d\udc50\ud83c\udfe0\ud83c\udfe3\ud83c\udfe2\ud83c\udfe1\ud83c\udfe4\ud83c\udfe5\ud83c\udfe6\ud83c\udfe9\ud83c\udfe7]"


# instance fields
.field private mAlpha:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    .line 29
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 31
    invoke-direct {p0}, Landroid/text/style/CharacterStyle;-><init>()V

    .line 26
    const/4 v0, -0x1

    iput v0, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    .line 32
    iput p1, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    .line 33
    return-void
.end method


# virtual methods
.method public getAlpha()I
    .locals 1

    .prologue
    .line 42
    iget v0, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    return v0
.end method

.method public setAlpha(I)V
    .locals 1
    .param p1, "alpha"    # I

    .prologue
    .line 36
    iget v0, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    if-eq v0, p1, :cond_0

    .line 37
    iput p1, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    .line 39
    :cond_0
    return-void
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 2
    .param p1, "tp"    # Landroid/text/TextPaint;

    .prologue
    .line 47
    const/4 v0, -0x1

    iget v1, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    if-eq v0, v1, :cond_0

    .line 48
    iget v0, p0, Landroid/text/style/EmojiStyleSpan;->mAlpha:I

    invoke-virtual {p1, v0}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 50
    :cond_0
    return-void
.end method
