.class public Lorg/codeaurora/camera/QCFace;
.super Landroid/hardware/Camera$Face;
.source "QCFace.java"


# static fields
.field private static final BUNDLE_KEY_BLINK_DETECTED:Ljava/lang/String; = "blinkDetected"

.field private static final BUNDLE_KEY_FACE_PITCH_DEGREE:Ljava/lang/String; = "facePitchDegree"

.field private static final BUNDLE_KEY_FACE_RECOGNIZED:Ljava/lang/String; = "faceRecognized"

.field private static final BUNDLE_KEY_FACE_ROLL_DEGREE:Ljava/lang/String; = "faceRollDegree"

.field private static final BUNDLE_KEY_FACE_YAW_DEGREE:Ljava/lang/String; = "faceYawDegree"

.field private static final BUNDLE_KEY_GAZE_LEFT_RIGHT_DEGREE:Ljava/lang/String; = "gazeLeftRightDegree"

.field private static final BUNDLE_KEY_GAZE_UP_DOWN_DEGREE:Ljava/lang/String; = "gazeUpDownDegree"

.field private static final BUNDLE_KEY_LEFT_EYE_CLOSED_VALUE:Ljava/lang/String; = "leftEyeClosedValue"

.field private static final BUNDLE_KEY_RIGHT_EYE_CLOSED_VALUE:Ljava/lang/String; = "rightEyeClosedValue"

.field private static final BUNDLE_KEY_SMILE_SCORE:Ljava/lang/String; = "smileScore"

.field private static final BUNDLE_KEY_SMILE_VALUE:Ljava/lang/String; = "smileValue"

.field private static final STR_FACIAL_PROCESSING:Ljava/lang/String; = "ro.qc.sdk.camera.facialproc"

.field private static final STR_FALSE:Ljava/lang/String; = "false"

.field private static final STR_TRUE:Ljava/lang/String; = "true"


# instance fields
.field private blinkDetected:I

.field private faceRecognized:I

.field private gazeAngle:I

.field private leftrightDir:I

.field private leftrightGaze:I

.field private leyeBlink:I

.field private reyeBlink:I

.field private rollDir:I

.field private smileDegree:I

.field private smileScore:I

.field private topbottomGaze:I

.field private updownDir:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Landroid/hardware/Camera$Face;-><init>()V

    .line 45
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    .line 46
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    .line 47
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    .line 48
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    .line 49
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->gazeAngle:I

    .line 50
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    .line 51
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    .line 52
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    .line 53
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    .line 54
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    .line 55
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    .line 56
    iput v0, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    .line 43
    return-void
.end method


# virtual methods
.method public getBlinkDetected()I
    .locals 1

    .prologue
    .line 86
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    return v0
.end method

.method public getFaceRecognized()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    return v0
.end method

.method public getGazeAngle()I
    .locals 1

    .prologue
    .line 104
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->gazeAngle:I

    return v0
.end method

.method public getLeftEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 140
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    return v0
.end method

.method public getLeftRightDirection()I
    .locals 1

    .prologue
    .line 122
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    return v0
.end method

.method public getLeftRightGazeDegree()I
    .locals 1

    .prologue
    .line 158
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    return v0
.end method

.method public getQCFaceInfo()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 183
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 184
    .local v0, "faceInfo":Landroid/os/Bundle;
    const-string v1, "smileValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 186
    const-string v1, "leftEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 187
    const-string v1, "rightEyeClosedValue"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    const-string v1, "facePitchDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 190
    const-string v1, "faceYawDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leftrightDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 191
    const-string v1, "faceRollDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 192
    const-string v1, "gazeUpDownDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 193
    const-string v1, "gazeLeftRightDegree"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->leftrightGaze:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 195
    const-string v1, "blinkDetected"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->blinkDetected:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 196
    const-string v1, "smileScore"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 197
    const-string v1, "faceRecognized"

    iget v2, p0, Lorg/codeaurora/camera/QCFace;->faceRecognized:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 199
    return-object v0
.end method

.method public getRightEyeBlinkDegree()I
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->reyeBlink:I

    return v0
.end method

.method public getRollDirection()I
    .locals 1

    .prologue
    .line 131
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->rollDir:I

    return v0
.end method

.method public getSmileDegree()I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->smileDegree:I

    return v0
.end method

.method public getSmileScore()I
    .locals 1

    .prologue
    .line 77
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->smileScore:I

    return v0
.end method

.method public getTopBottomGazeDegree()I
    .locals 1

    .prologue
    .line 167
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->topbottomGaze:I

    return v0
.end method

.method public getUpDownDirection()I
    .locals 1

    .prologue
    .line 113
    iget v0, p0, Lorg/codeaurora/camera/QCFace;->updownDir:I

    return v0
.end method
