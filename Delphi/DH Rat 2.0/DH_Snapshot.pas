{
  This software is Copyright (c) 2016 by Doddy Hackman.
  This is free software, licensed under:
  The Artistic License 2.0
  The Artistic License
  Preamble
  This license establishes the terms under which a given free software Package may be copied, modified, distributed, and/or redistributed. The intent is that the Copyright Holder maintains some artistic control over the development of that Package while still keeping the Package available as open source and free software.
  You are always permitted to make arrangements wholly outside of this license directly with the Copyright Holder of a given Package. If the terms of this license do not permit the full use that you propose to make of the Package, you should contact the Copyright Holder and seek a different licensing arrangement.
  Definitions
  "Copyright Holder" means the individual(s) or organization(s) named in the copyright notice for the entire Package.
  "Contributor" means any party that has contributed code or other material to the Package, in accordance with the Copyright Holder's procedures.
  "You" and "your" means any person who would like to copy, distribute, or modify the Package.
  "Package" means the collection of files distributed by the Copyright Holder, and derivatives of that collection and/or of those files. A given Package may consist of either the Standard Version, or a Modified Version.
  "Distribute" means providing a copy of the Package or making it accessible to anyone else, or in the case of a company or organization, to others outside of your company or organization.
  "Distributor Fee" means any fee that you charge for Distributing this Package or providing support for this Package to another party. It does not mean licensing fees.
  "Standard Version" refers to the Package if it has not been modified, or has been modified only in ways explicitly requested by the Copyright Holder.
  "Modified Version" means the Package, if it has been changed, and such changes were not explicitly requested by the Copyright Holder.
  "Original License" means this Artistic License as Distributed with the Standard Version of the Package, in its current version or as it may be modified by The Perl Foundation in the future.
  "Source" form means the source code, documentation source, and configuration files for the Package.
  "Compiled" form means the compiled bytecode, object code, binary, or any other form resulting from mechanical transformation or translation of the Source form.
  Permission for Use and Modification Without Distribution
  (1) You are permitted to use the Standard Version and create and use Modified Versions for any purpose without restriction, provided that you do not Distribute the Modified Version.
  Permissions for Redistribution of the Standard Version
  (2) You may Distribute verbatim copies of the Source form of the Standard Version of this Package in any medium without restriction, either gratis or for a Distributor Fee, provided that you duplicate all of the original copyright notices and associated disclaimers. At your discretion, such verbatim copies may or may not include a Compiled form of the Package.
  (3) You may apply any bug fixes, portability changes, and other modifications made available from the Copyright Holder. The resulting Package will still be considered the Standard Version, and as such will be subject to the Original License.
  Distribution of Modified Versions of the Package as Source
  (4) You may Distribute your Modified Version as Source (either gratis or for a Distributor Fee, and with or without a Compiled form of the Modified Version) provided that you clearly document how it differs from the Standard Version, including, but not limited to, documenting any non-standard features, executables, or modules, and provided that you do at least ONE of the following:
  (a) make the Modified Version available to the Copyright Holder of the Standard Version, under the Original License, so that the Copyright Holder may include your modifications in the Standard Version.
  (b) ensure that installation of your Modified Version does not prevent the user installing or running the Standard Version. In addition, the Modified Version must bear a name that is different from the name of the Standard Version.
  (c) allow anyone who receives a copy of the Modified Version to make the Source form of the Modified Version available to others under
  (i) the Original License or
  (ii) a license that permits the licensee to freely copy, modify and redistribute the Modified Version using the same licensing terms that apply to the copy that the licensee received, and requires that the Source form of the Modified Version, and of any works derived from it, be made freely available in that license fees are prohibited but Distributor Fees are allowed.
  Distribution of Compiled Forms of the Standard Version or Modified Versions without the Source
  (5) You may Distribute Compiled forms of the Standard Version without the Source, provided that you include complete instructions on how to get the Source of the Standard Version. Such instructions must be valid at the time of your distribution. If these instructions, at any time while you are carrying out such distribution, become invalid, you must provide new instructions on demand or cease further distribution. If you provide valid instructions or cease distribution within thirty days after you become aware that the instructions are invalid, then you do not forfeit any of your rights under this license.
  (6) You may Distribute a Modified Version in Compiled form without the Source, provided that you comply with Section 4 with respect to the Source of the Modified Version.
  Aggregating or Linking the Package
  (7) You may aggregate the Package (either the Standard Version or Modified Version) with other packages and Distribute the resulting aggregation provided that you do not charge a licensing fee for the Package. Distributor Fees are permitted, and licensing fees for other components in the aggregation are permitted. The terms of this license apply to the use and Distribution of the Standard or Modified Versions as included in the aggregation.
  (8) You are permitted to link Modified and Standard Versions with other works, to embed the Package in a larger work of your own, or to build stand-alone binary or bytecode versions of applications that include the Package, and Distribute the result without restriction, provided the result does not expose a direct interface to the Package.
  Items That are Not Considered Part of a Modified Version
  (9) Works (including, but not limited to, modules and scripts) that merely extend or make use of the Package, do not, by themselves, cause the Package to be a Modified Version. In addition, such works are not considered parts of the Package itself, and are not subject to the terms of this license.
  General Provisions
  (10) Any use, modification, and distribution of the Standard or Modified Versions is governed by this Artistic License. By using, modifying or distributing the Package, you accept this license. Do not use, modify, or distribute the Package, if you do not accept this license.
  (11) If your Modified Version has been derived from a Modified Version made by someone other than you, you are nevertheless required to ensure that your Modified Version complies with the requirements of this license.
  (12) This license does not grant you the right to use any trademark, service mark, tradename, or logo of the Copyright Holder.
  (13) This license includes the non-exclusive, worldwide, free-of-charge patent license to make, have made, use, offer to sell, sell, import and otherwise transfer the Package with respect to any patent claims licensable by the Copyright Holder that are necessarily infringed by the Package. If you institute patent litigation (including a cross-claim or counterclaim) against any party alleging that the Package constitutes direct or contributory patent infringement, then this Artistic License to you shall terminate on the date that such litigation is filed.
  (14) Disclaimer of Warranty: THE PACKAGE IS PROVIDED BY THE COPYRIGHT HOLDER AND CONTRIBUTORS "AS IS' AND WITHOUT ANY EXPRESS OR IMPLIED WARRANTIES. THE IMPLIED WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE, OR NON-INFRINGEMENT ARE DISCLAIMED TO THE EXTENT PERMITTED BY YOUR LOCAL LAW. UNLESS REQUIRED BY LAW, NO COPYRIGHT HOLDER OR CONTRIBUTOR WILL BE LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, OR CONSEQUENTIAL DAMAGES ARISING IN ANY WAY OUT OF THE USE OF THE PACKAGE, EVEN IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
}

// Unit : DH Snapshot
// Version : 1.0
// (C) Doddy Hackman 2016

unit DH_Snapshot;

interface

uses SysUtils, Windows, Vcl.Imaging.jpeg, Vcl.Graphics, VSample,
  VFrames, Classes;

type
  other_array_snapshot = array of string;

  T_DH_Snapshot = class
  private
    procedure NewVideoFrameEvent(Sender: TObject; Width, Height: integer;
      DataPtr: pointer);
  public
    constructor Create;
    destructor Destroy; override;
    function optimize_image(image: string): boolean;
    function resize_image(filename: string; Width: integer;
      Height: integer): boolean;
    function take_screenshot_desktop(screenshot_name: string;
      optimize: boolean): boolean;
    function take_photo_webcam(screenshot_name: string;
      optimize: boolean): boolean;
    function check_webcam(): boolean;
    function list_webcams(): other_array_snapshot;
    function get_webcam_name(): string;
  end;

var
  video: TVideoImage;
  count: integer;
  webcam_screenshot: string;
  webcam_optimize: boolean;

implementation

constructor T_DH_Snapshot.Create;
begin
  inherited Create;
  count := 0;
end;

destructor T_DH_Snapshot.Destroy;
begin
  inherited Destroy;
end;

function T_DH_Snapshot.optimize_image(image: string): boolean;
var
  image1: TBitmap;
  image2: TJpegImage;
begin
  try
    begin
      image1 := TBitmap.Create;
      image2 := TJpegImage.Create;
      image1.LoadFromFile(image);
      image2.Assign(image1);
      image2.CompressionQuality := 60;
      image2.SaveToFile(image);
      image1.Free;
      image2.Free;
      Result := True;
    end;
  except
    begin
      Result := False;
    end;
  end;
end;

function T_DH_Snapshot.resize_image(filename: string; Width: integer;
  Height: integer): boolean;

// Credits  :
// Based on : http://www.delphidabbler.com/tips/99
// Thanks to www.delphidabbler.com

var
  jpeg_image: TJpegImage;
  bitmap_image: TBitmap;
  size: Double;

begin

  try
    begin

      jpeg_image := TJpegImage.Create;

      jpeg_image.LoadFromFile(filename);

      if jpeg_image.Height > jpeg_image.Width then
      begin
        size := Height / jpeg_image.Height
      end
      else
      begin
        size := Width / jpeg_image.Width;
      end;

      bitmap_image := TBitmap.Create;

      bitmap_image.Width := Round(jpeg_image.Width * size);
      bitmap_image.Height := Round(jpeg_image.Height * size);
      bitmap_image.Canvas.StretchDraw(bitmap_image.Canvas.Cliprect, jpeg_image);

      jpeg_image.Assign(bitmap_image);

      jpeg_image.SaveToFile(filename);

      bitmap_image.Free();
      jpeg_image.Free();

      Result := True;

    end;
  except
    Result := False;
  end;

end;

function T_DH_Snapshot.take_screenshot_desktop(screenshot_name: string;
  optimize: boolean): boolean;

// Function based in :
// http://forum.codecall.net/topic/60613-how-to-capture-screen-with-delphi-code/
// http://delphi.about.com/cs/adptips2001/a/bltip0501_4.htm
// http://stackoverflow.com/questions/21971605/show-mouse-cursor-in-screenshot-with-delphi
// Thanks to Zarko Gajic , Luthfi and Ken White

var
  window: HDC;
  size: TRect;
  points: TPoint;
  image1: TBitmap;
  cursor_position: THandle;
  response: boolean;

begin

  response := False;

  if not(screenshot_name = '') then
  begin

    if (FileExists(screenshot_name)) then
    begin
      DeleteFile(Pchar(screenshot_name));
    end;

    try
      begin
        window := GetWindowDC(GetDesktopWindow);
        image1 := TBitmap.Create;

        GetWindowRect(GetDesktopWindow, size);
        image1.Width := size.Right - size.Left;
        image1.Height := size.Bottom - size.Top;
        BitBlt(image1.Canvas.Handle, 0, 0, image1.Width, image1.Height, window,
          0, 0, SRCCOPY);

        GetCursorPos(points);

        cursor_position := GetCursor;
        DrawIconEx(image1.Canvas.Handle, points.X, points.Y, cursor_position,
          32, 32, 0, 0, DI_NORMAL);

        image1.SaveToFile(screenshot_name);
        image1.Free;
      end;
    except
      begin
        //
      end;
    end;

    if (FileExists(screenshot_name)) then
    begin
      if (optimize = True) then
      begin
        if (optimize_image(screenshot_name)) then
        begin
          response := True;
        end
        else
        begin
          response := False;
        end;
      end
      else
      begin
        response := True;
      end;
    end
    else
    begin
      response := False;
    end;

  end
  else
  begin
    response := False;
  end;

  Result := response;

end;

// Functions to Capture Webcam

Procedure T_DH_Snapshot.NewVideoFrameEvent(Sender: TObject;
  Width, Height: integer; DataPtr: pointer);
var
  bitmap: TBitmap;
  name: string;
begin
  name := webcam_screenshot;
  if (FileExists(name)) then
  begin
    DeleteFile(Pchar(name));
  end;
  Inc(count);
  try
    begin
      bitmap := TBitmap.Create;
      bitmap.PixelFormat := pf24bit;
      video.GetBitmap(bitmap);
      bitmap.SaveToFile(name);
      bitmap.Free;
    end;
  except
    begin
      //
    end;
  end;
  if (FileExists(name) and (count = 10)) then
  begin
    count := 0;
    video.VideoStop;
    video.Free;
    if (webcam_optimize = True) then
    begin
      optimize_image(name);
    end;
  end;
end;

function T_DH_Snapshot.take_photo_webcam(screenshot_name: string;
  optimize: boolean): boolean;
var
  cameras: TStringList;
  response: boolean;
begin

  response := False;

  try
    begin
      video := TVideoImage.Create();

      cameras := TStringList.Create;

      video.GetListOfDevices(cameras);
      if not(cameras.count = 0) then
      begin
        webcam_screenshot := screenshot_name;
        webcam_optimize := optimize;
        video.VideoStart(cameras[0]);
        response := True;
      end
      else
      begin
        response := False;
      end;

      cameras.Free;

      video.OnNewVideoFrame := NewVideoFrameEvent;
    end;
  except
    begin
      response := False;
    end;
  end;

  Result := response;

end;

function T_DH_Snapshot.check_webcam(): boolean;
var
  camera_control: TVideoImage;
  cameras_found: TStringList;
  response: boolean;
begin

  response := False;

  try
    begin
      camera_control := TVideoImage.Create();

      cameras_found := TStringList.Create;

      camera_control.GetListOfDevices(cameras_found);
      if not(cameras_found.count = 0) then
      begin
        response := True;
      end
      else
      begin
        response := False;
      end;

      cameras_found.Free;
      camera_control.Free;
    end;
  except
    begin
      response := False;
    end;
  end;

  Result := response;

end;

function T_DH_Snapshot.list_webcams(): other_array_snapshot;
var
  webcam_list: other_array_snapshot;
  cameras_found: TStringList;
  camera_control: TVideoImage;
  i: integer;
begin

  camera_control := TVideoImage.Create();
  cameras_found := TStringList.Create;
  camera_control.GetListOfDevices(cameras_found);

  for i := 0 to cameras_found.count - 1 do
  begin
    SetLength(webcam_list, Length(webcam_list) + 1);
    webcam_list[High(webcam_list)] := cameras_found[i];
  end;

  cameras_found.Free;
  camera_control.Free;

  Result := webcam_list;

end;

function T_DH_Snapshot.get_webcam_name(): string;
var
  cameras_found: TStringList;
  camera_control: TVideoImage;
  webcam_name: string;
begin

  webcam_name := '';

  try
    begin
      camera_control := TVideoImage.Create();
      cameras_found := TStringList.Create;
      camera_control.GetListOfDevices(cameras_found);

      if not(cameras_found.count = 0) then
      begin
        webcam_name := cameras_found[0];
      end
      else
      begin
        webcam_name := '?';
      end;

      cameras_found.Free;
      camera_control.Free;
    end;
  except
    begin
      //
    end;
  end;

  Result := webcam_name;

end;

//

end.

// The End ?
