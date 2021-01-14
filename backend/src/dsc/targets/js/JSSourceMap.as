package dsc.targets.js {
    public final class JSSourceMap {
        private static const chars:String = 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/=';

        private static function encodeInteger(num:Number):String {
            var result:String = '';
            num = num < 0 ? (-num << 1) | 1 : num << 1;
            do {
                var clamped:Number = num & 31;
                num >>>= 5;
                if (num > 0) {
                    clamped |= 32;
                }
                result += chars.charAt(clamped);
            } while (num > 0);

            return result;
        }
    }
}