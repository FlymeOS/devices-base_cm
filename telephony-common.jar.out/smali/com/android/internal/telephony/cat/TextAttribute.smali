.class public Lcom/android/internal/telephony/cat/TextAttribute;
.super Ljava/lang/Object;
.source "TextAttribute.java"


# instance fields
.field public align:Lcom/android/internal/telephony/cat/TextAlignment;

.field public bold:Z

.field public color:Lcom/android/internal/telephony/cat/TextColor;

.field public italic:Z

.field public length:I

.field public size:Lcom/android/internal/telephony/cat/FontSize;

.field public start:I

.field public strikeThrough:Z

.field public underlined:Z


# direct methods
.method public constructor <init>(IILcom/android/internal/telephony/cat/TextAlignment;Lcom/android/internal/telephony/cat/FontSize;ZZZZLcom/android/internal/telephony/cat/TextColor;)V
    .locals 0
    .param p1, "start"    # I
    .param p2, "length"    # I
    .param p3, "align"    # Lcom/android/internal/telephony/cat/TextAlignment;
    .param p4, "size"    # Lcom/android/internal/telephony/cat/FontSize;
    .param p5, "bold"    # Z
    .param p6, "italic"    # Z
    .param p7, "underlined"    # Z
    .param p8, "strikeThrough"    # Z
    .param p9, "color"    # Lcom/android/internal/telephony/cat/TextColor;

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput p1, p0, Lcom/android/internal/telephony/cat/TextAttribute;->start:I

    .line 40
    iput p2, p0, Lcom/android/internal/telephony/cat/TextAttribute;->length:I

    .line 41
    iput-object p3, p0, Lcom/android/internal/telephony/cat/TextAttribute;->align:Lcom/android/internal/telephony/cat/TextAlignment;

    .line 42
    iput-object p4, p0, Lcom/android/internal/telephony/cat/TextAttribute;->size:Lcom/android/internal/telephony/cat/FontSize;

    .line 43
    iput-boolean p5, p0, Lcom/android/internal/telephony/cat/TextAttribute;->bold:Z

    .line 44
    iput-boolean p6, p0, Lcom/android/internal/telephony/cat/TextAttribute;->italic:Z

    .line 45
    iput-boolean p7, p0, Lcom/android/internal/telephony/cat/TextAttribute;->underlined:Z

    .line 46
    iput-boolean p8, p0, Lcom/android/internal/telephony/cat/TextAttribute;->strikeThrough:Z

    .line 47
    iput-object p9, p0, Lcom/android/internal/telephony/cat/TextAttribute;->color:Lcom/android/internal/telephony/cat/TextColor;

    .line 38
    return-void
.end method
