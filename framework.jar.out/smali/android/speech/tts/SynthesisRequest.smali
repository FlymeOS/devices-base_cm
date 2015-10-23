.class public final Landroid/speech/tts/SynthesisRequest;
.super Ljava/lang/Object;
.source "SynthesisRequest.java"


# instance fields
.field private mCallerUid:I

.field private mCountry:Ljava/lang/String;

.field private mLanguage:Ljava/lang/String;

.field private final mParams:Landroid/os/Bundle;

.field private mPitch:I

.field private mSpeechRate:I

.field private final mText:Ljava/lang/CharSequence;

.field private mVariant:Ljava/lang/String;

.field private mVoiceName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    .line 60
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "params"    # Landroid/os/Bundle;

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    .line 53
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0, p2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    iput-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    .line 54
    return-void
.end method


# virtual methods
.method public getCallerUid()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    return v0
.end method

.method public getCharSequenceText()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getCountry()Ljava/lang/String;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    return-object v0
.end method

.method public getLanguage()Ljava/lang/String;
    .locals 1

    .prologue
    .line 89
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    return-object v0
.end method

.method public getParams()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 124
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mParams:Landroid/os/Bundle;

    return-object v0
.end method

.method public getPitch()I
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    return v0
.end method

.method public getSpeechRate()I
    .locals 1

    .prologue
    .line 110
    iget v0, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 68
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mText:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVariant()Ljava/lang/String;
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    return-object v0
.end method

.method public getVoiceName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    return-object v0
.end method

.method setCallerUid(I)V
    .locals 0
    .param p1, "uid"    # I

    .prologue
    .line 168
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mCallerUid:I

    .line 169
    return-void
.end method

.method setLanguage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "language"    # Ljava/lang/String;
    .param p2, "country"    # Ljava/lang/String;
    .param p3, "variant"    # Ljava/lang/String;

    .prologue
    .line 138
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mLanguage:Ljava/lang/String;

    .line 139
    iput-object p2, p0, Landroid/speech/tts/SynthesisRequest;->mCountry:Ljava/lang/String;

    .line 140
    iput-object p3, p0, Landroid/speech/tts/SynthesisRequest;->mVariant:Ljava/lang/String;

    .line 141
    return-void
.end method

.method setPitch(I)V
    .locals 0
    .param p1, "pitch"    # I

    .prologue
    .line 161
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mPitch:I

    .line 162
    return-void
.end method

.method setSpeechRate(I)V
    .locals 0
    .param p1, "speechRate"    # I

    .prologue
    .line 154
    iput p1, p0, Landroid/speech/tts/SynthesisRequest;->mSpeechRate:I

    .line 155
    return-void
.end method

.method setVoiceName(Ljava/lang/String;)V
    .locals 0
    .param p1, "voiceName"    # Ljava/lang/String;

    .prologue
    .line 147
    iput-object p1, p0, Landroid/speech/tts/SynthesisRequest;->mVoiceName:Ljava/lang/String;

    .line 148
    return-void
.end method
